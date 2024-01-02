"""
Pokemon IV Byte Converter for CrystalShireEngine

This script converts Pokémon IV bytes in the CrystalShireEngine to human-readable IVs and vice versa. It is designed for programmers working with Pokémon data, providing a straightforward interface for IV and byte conversions.

Functions:
1. Convert hexadecimal bytes to IVs.
2. Convert IVs to hexadecimal bytes.

Authors: Vulcandth and ChatGPT
Date: 2024-01-02
"""

# Constants for masks
IV_HP_MASK = '00011111'
IV_ATK_MASK = '00111110'
IV_DEF_HIGH_MASK = '00000001'
IV_DEF_LOW_MASK = '11110000'
IV_SPD_HIGH_MASK = '00001111'
IV_SPD_LOW_MASK = '10000000'
IV_SP_ATK_MASK = '01111100'
IV_SP_DEF_HIGH_MASK = '00000011'
IV_SP_DEF_LOW_MASK = '11100000'

def hex_to_bin(hex_string):
    """Converts a hexadecimal string to a binary string."""
    return bin(int(hex_string, 16))[2:].zfill(8)

def bin_to_hex(bin_string):
    """Converts a binary string to a hexadecimal string."""
    return hex(int(bin_string, 2))[2:].upper()

def apply_mask(bin_string, mask):
    """Applies a bitmask to a binary string."""
    return bin(int(bin_string, 2) & int(mask, 2))[2:].zfill(8)

def set_bits(byte_string, iv, mask):
    """Sets bits in a byte string based on an IV value and mask."""
    iv_bin = bin(iv)[2:].zfill(8)
    masked_iv = apply_mask(iv_bin, mask)
    return bin(int(byte_string, 2) | int(masked_iv, 2))[2:].zfill(8)

def calculate_ivs(byte1, byte2, byte3, byte4):
    """Calculates IVs from bytes, mirroring the original script logic."""
    # Calculating IVs using masks and bit operations as in the original scripts
    iv_hp = int(apply_mask(byte4, IV_HP_MASK), 2)
    iv_atk = int(apply_mask(byte1, IV_ATK_MASK), 2) >> 1
    iv_def = (int(apply_mask(byte1, IV_DEF_HIGH_MASK), 2) << 4) | (int(apply_mask(byte2, IV_DEF_LOW_MASK), 2) >> 4)
    iv_spd_high = int(apply_mask(byte2, IV_SPD_HIGH_MASK), 2) << 1
    iv_spd_low = int(apply_mask(byte3, IV_SPD_LOW_MASK), 2) >> 7
    iv_spd = (iv_spd_high | iv_spd_low) & 0x1F
    iv_sp_atk = int(apply_mask(byte3, IV_SP_ATK_MASK), 2) >> 2
    iv_sp_def_high = int(apply_mask(byte3, IV_SP_DEF_HIGH_MASK), 2) << 3
    iv_sp_def_low = int(apply_mask(byte4, IV_SP_DEF_LOW_MASK), 2) >> 5
    iv_sp_def = (iv_sp_def_high | iv_sp_def_low) & 0x1F

    return iv_hp, iv_atk, iv_def, iv_spd, iv_sp_atk, iv_sp_def

def calculate_bytes(iv_hp, iv_atk, iv_def, iv_spd, iv_sp_atk, iv_sp_def):
    """Calculates bytes from IVs, mirroring the original script logic."""
    # Calculating bytes using masks and bit operations as in the original scripts
    byte1 = '00000000'
    byte2 = '00000000'
    byte3 = '00000000'
    byte4 = '00000000'

    byte4 = set_bits(byte4, iv_hp, IV_HP_MASK)
    byte1 = set_bits(byte1, iv_atk << 1, IV_ATK_MASK)
    byte1 = set_bits(byte1, iv_def >> 4, IV_DEF_HIGH_MASK)
    byte2 = set_bits(byte2, iv_def << 4, IV_DEF_LOW_MASK)
    byte2 = set_bits(byte2, iv_spd >> 1, IV_SPD_HIGH_MASK)
    byte3 = set_bits(byte3, iv_spd << 7, IV_SPD_LOW_MASK)
    byte3 = set_bits(byte3, iv_sp_atk << 2, IV_SP_ATK_MASK)
    byte3 = set_bits(byte3, iv_sp_def >> 3, IV_SP_DEF_HIGH_MASK)
    byte4 = set_bits(byte4, iv_sp_def << 5, IV_SP_DEF_LOW_MASK)

    hex_byte1 = bin_to_hex(byte1)
    hex_byte2 = bin_to_hex(byte2)
    hex_byte3 = bin_to_hex(byte3)
    hex_byte4 = bin_to_hex(byte4)

    return hex_byte1, hex_byte2, hex_byte3, hex_byte4

def main():
    # User chooses the operation
    print("Choose the operation:")
    print("1. Calculate IVs from Bytes")
    print("2. Calculate Bytes from IVs")
    choice = input("Enter your choice (1 or 2): ")

    if choice == '1':
        # User inputs for IV calculation
        byte1 = hex_to_bin(input("Enter the first byte in hex: "))
        byte2 = hex_to_bin(input("Enter the second byte in hex: "))
        byte3 = hex_to_bin(input("Enter the third byte in hex: "))
        byte4 = hex_to_bin(input("Enter the fourth byte in hex: "))

        # Calculating IVs
        iv_hp, iv_atk, iv_def, iv_spd, iv_sp_atk, iv_sp_def = calculate_ivs(byte1, byte2, byte3, byte4)

        # Displaying results
        print(f"IVs - HP: {iv_hp}, Attack: {iv_atk}, Defense: {iv_def}, Speed: {iv_spd}, Special Attack: {iv_sp_atk}, Special Defense: {iv_sp_def}")

    elif choice == '2':
        # User inputs for byte calculation
        iv_hp = int(input("Enter IV for HP: "))
        iv_atk = int(input("Enter IV for Attack: "))
        iv_def = int(input("Enter IV for Defense: "))
        iv_spd = int(input("Enter IV for Speed: "))
        iv_sp_atk = int(input("Enter IV for Special Attack: "))
        iv_sp_def = int(input("Enter IV for Special Defense: "))

        # Calculating bytes
        hex_byte1, hex_byte2, hex_byte3, hex_byte4 = calculate_bytes(iv_hp, iv_atk, iv_def, iv_spd, iv_sp_atk, iv_sp_def)

        # Displaying results
        print(f"Hex Byte 1: {hex_byte1}")
        print(f"Hex Byte 2: {hex_byte2}")
        print(f"Hex Byte 3: {hex_byte3}")
        print(f"Hex Byte 4: {hex_byte4}")

    else:
        print("Invalid choice. Please enter 1 or 2.")

if __name__ == "__main__":
    main()
