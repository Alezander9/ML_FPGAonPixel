-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_outidx_1_ROMdEe is 
    generic(
             DataWidth     : integer := 4; 
             AddressWidth     : integer := 9; 
             AddressRange    : integer := 512
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of myproject_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s_outidx_1_ROMdEe is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0000", 1 => "0000", 2 => "0000", 3 => "0000", 
    4 => "0000", 5 => "0000", 6 => "0000", 7 => "0000", 
    8 => "0000", 9 => "0000", 10 => "0000", 11 => "0000", 
    12 => "0000", 13 => "0000", 14 => "0000", 15 => "0000", 
    16 => "0000", 17 => "0000", 18 => "0000", 19 => "0000", 
    20 => "0000", 21 => "0000", 22 => "0000", 23 => "0000", 
    24 => "0000", 25 => "0000", 26 => "0000", 27 => "0000", 
    28 => "0000", 29 => "0000", 30 => "0000", 31 => "0000", 
    32 => "0001", 33 => "0001", 34 => "0001", 35 => "0001", 
    36 => "0001", 37 => "0001", 38 => "0001", 39 => "0001", 
    40 => "0001", 41 => "0001", 42 => "0001", 43 => "0001", 
    44 => "0001", 45 => "0001", 46 => "0001", 47 => "0001", 
    48 => "0001", 49 => "0001", 50 => "0001", 51 => "0001", 
    52 => "0001", 53 => "0001", 54 => "0001", 55 => "0001", 
    56 => "0001", 57 => "0001", 58 => "0001", 59 => "0001", 
    60 => "0001", 61 => "0001", 62 => "0001", 63 => "0001", 
    64 => "0010", 65 => "0010", 66 => "0010", 67 => "0010", 
    68 => "0010", 69 => "0010", 70 => "0010", 71 => "0010", 
    72 => "0010", 73 => "0010", 74 => "0010", 75 => "0010", 
    76 => "0010", 77 => "0010", 78 => "0010", 79 => "0010", 
    80 => "0010", 81 => "0010", 82 => "0010", 83 => "0010", 
    84 => "0010", 85 => "0010", 86 => "0010", 87 => "0010", 
    88 => "0010", 89 => "0010", 90 => "0010", 91 => "0010", 
    92 => "0010", 93 => "0010", 94 => "0010", 95 => "0010", 
    96 => "0011", 97 => "0011", 98 => "0011", 99 => "0011", 
    100 => "0011", 101 => "0011", 102 => "0011", 103 => "0011", 
    104 => "0011", 105 => "0011", 106 => "0011", 107 => "0011", 
    108 => "0011", 109 => "0011", 110 => "0011", 111 => "0011", 
    112 => "0011", 113 => "0011", 114 => "0011", 115 => "0011", 
    116 => "0011", 117 => "0011", 118 => "0011", 119 => "0011", 
    120 => "0011", 121 => "0011", 122 => "0011", 123 => "0011", 
    124 => "0011", 125 => "0011", 126 => "0011", 127 => "0011", 
    128 => "0100", 129 => "0100", 130 => "0100", 131 => "0100", 
    132 => "0100", 133 => "0100", 134 => "0100", 135 => "0100", 
    136 => "0100", 137 => "0100", 138 => "0100", 139 => "0100", 
    140 => "0100", 141 => "0100", 142 => "0100", 143 => "0100", 
    144 => "0100", 145 => "0100", 146 => "0100", 147 => "0100", 
    148 => "0100", 149 => "0100", 150 => "0100", 151 => "0100", 
    152 => "0100", 153 => "0100", 154 => "0100", 155 => "0100", 
    156 => "0100", 157 => "0100", 158 => "0100", 159 => "0100", 
    160 => "0101", 161 => "0101", 162 => "0101", 163 => "0101", 
    164 => "0101", 165 => "0101", 166 => "0101", 167 => "0101", 
    168 => "0101", 169 => "0101", 170 => "0101", 171 => "0101", 
    172 => "0101", 173 => "0101", 174 => "0101", 175 => "0101", 
    176 => "0101", 177 => "0101", 178 => "0101", 179 => "0101", 
    180 => "0101", 181 => "0101", 182 => "0101", 183 => "0101", 
    184 => "0101", 185 => "0101", 186 => "0101", 187 => "0101", 
    188 => "0101", 189 => "0101", 190 => "0101", 191 => "0101", 
    192 => "0110", 193 => "0110", 194 => "0110", 195 => "0110", 
    196 => "0110", 197 => "0110", 198 => "0110", 199 => "0110", 
    200 => "0110", 201 => "0110", 202 => "0110", 203 => "0110", 
    204 => "0110", 205 => "0110", 206 => "0110", 207 => "0110", 
    208 => "0110", 209 => "0110", 210 => "0110", 211 => "0110", 
    212 => "0110", 213 => "0110", 214 => "0110", 215 => "0110", 
    216 => "0110", 217 => "0110", 218 => "0110", 219 => "0110", 
    220 => "0110", 221 => "0110", 222 => "0110", 223 => "0110", 
    224 => "0111", 225 => "0111", 226 => "0111", 227 => "0111", 
    228 => "0111", 229 => "0111", 230 => "0111", 231 => "0111", 
    232 => "0111", 233 => "0111", 234 => "0111", 235 => "0111", 
    236 => "0111", 237 => "0111", 238 => "0111", 239 => "0111", 
    240 => "0111", 241 => "0111", 242 => "0111", 243 => "0111", 
    244 => "0111", 245 => "0111", 246 => "0111", 247 => "0111", 
    248 => "0111", 249 => "0111", 250 => "0111", 251 => "0111", 
    252 => "0111", 253 => "0111", 254 => "0111", 255 => "0111", 
    256 => "1000", 257 => "1000", 258 => "1000", 259 => "1000", 
    260 => "1000", 261 => "1000", 262 => "1000", 263 => "1000", 
    264 => "1000", 265 => "1000", 266 => "1000", 267 => "1000", 
    268 => "1000", 269 => "1000", 270 => "1000", 271 => "1000", 
    272 => "1000", 273 => "1000", 274 => "1000", 275 => "1000", 
    276 => "1000", 277 => "1000", 278 => "1000", 279 => "1000", 
    280 => "1000", 281 => "1000", 282 => "1000", 283 => "1000", 
    284 => "1000", 285 => "1000", 286 => "1000", 287 => "1000", 
    288 => "1001", 289 => "1001", 290 => "1001", 291 => "1001", 
    292 => "1001", 293 => "1001", 294 => "1001", 295 => "1001", 
    296 => "1001", 297 => "1001", 298 => "1001", 299 => "1001", 
    300 => "1001", 301 => "1001", 302 => "1001", 303 => "1001", 
    304 => "1001", 305 => "1001", 306 => "1001", 307 => "1001", 
    308 => "1001", 309 => "1001", 310 => "1001", 311 => "1001", 
    312 => "1001", 313 => "1001", 314 => "1001", 315 => "1001", 
    316 => "1001", 317 => "1001", 318 => "1001", 319 => "1001", 
    320 => "1010", 321 => "1010", 322 => "1010", 323 => "1010", 
    324 => "1010", 325 => "1010", 326 => "1010", 327 => "1010", 
    328 => "1010", 329 => "1010", 330 => "1010", 331 => "1010", 
    332 => "1010", 333 => "1010", 334 => "1010", 335 => "1010", 
    336 => "1010", 337 => "1010", 338 => "1010", 339 => "1010", 
    340 => "1010", 341 => "1010", 342 => "1010", 343 => "1010", 
    344 => "1010", 345 => "1010", 346 => "1010", 347 => "1010", 
    348 => "1010", 349 => "1010", 350 => "1010", 351 => "1010", 
    352 => "1011", 353 => "1011", 354 => "1011", 355 => "1011", 
    356 => "1011", 357 => "1011", 358 => "1011", 359 => "1011", 
    360 => "1011", 361 => "1011", 362 => "1011", 363 => "1011", 
    364 => "1011", 365 => "1011", 366 => "1011", 367 => "1011", 
    368 => "1011", 369 => "1011", 370 => "1011", 371 => "1011", 
    372 => "1011", 373 => "1011", 374 => "1011", 375 => "1011", 
    376 => "1011", 377 => "1011", 378 => "1011", 379 => "1011", 
    380 => "1011", 381 => "1011", 382 => "1011", 383 => "1011", 
    384 => "1100", 385 => "1100", 386 => "1100", 387 => "1100", 
    388 => "1100", 389 => "1100", 390 => "1100", 391 => "1100", 
    392 => "1100", 393 => "1100", 394 => "1100", 395 => "1100", 
    396 => "1100", 397 => "1100", 398 => "1100", 399 => "1100", 
    400 => "1100", 401 => "1100", 402 => "1100", 403 => "1100", 
    404 => "1100", 405 => "1100", 406 => "1100", 407 => "1100", 
    408 => "1100", 409 => "1100", 410 => "1100", 411 => "1100", 
    412 => "1100", 413 => "1100", 414 => "1100", 415 => "1100", 
    416 => "1101", 417 => "1101", 418 => "1101", 419 => "1101", 
    420 => "1101", 421 => "1101", 422 => "1101", 423 => "1101", 
    424 => "1101", 425 => "1101", 426 => "1101", 427 => "1101", 
    428 => "1101", 429 => "1101", 430 => "1101", 431 => "1101", 
    432 => "1101", 433 => "1101", 434 => "1101", 435 => "1101", 
    436 => "1101", 437 => "1101", 438 => "1101", 439 => "1101", 
    440 => "1101", 441 => "1101", 442 => "1101", 443 => "1101", 
    444 => "1101", 445 => "1101", 446 => "1101", 447 => "1101", 
    448 => "1110", 449 => "1110", 450 => "1110", 451 => "1110", 
    452 => "1110", 453 => "1110", 454 => "1110", 455 => "1110", 
    456 => "1110", 457 => "1110", 458 => "1110", 459 => "1110", 
    460 => "1110", 461 => "1110", 462 => "1110", 463 => "1110", 
    464 => "1110", 465 => "1110", 466 => "1110", 467 => "1110", 
    468 => "1110", 469 => "1110", 470 => "1110", 471 => "1110", 
    472 => "1110", 473 => "1110", 474 => "1110", 475 => "1110", 
    476 => "1110", 477 => "1110", 478 => "1110", 479 => "1110", 
    480 => "1111", 481 => "1111", 482 => "1111", 483 => "1111", 
    484 => "1111", 485 => "1111", 486 => "1111", 487 => "1111", 
    488 => "1111", 489 => "1111", 490 => "1111", 491 => "1111", 
    492 => "1111", 493 => "1111", 494 => "1111", 495 => "1111", 
    496 => "1111", 497 => "1111", 498 => "1111", 499 => "1111", 
    500 => "1111", 501 => "1111", 502 => "1111", 503 => "1111", 
    504 => "1111", 505 => "1111", 506 => "1111", 507 => "1111", 
    508 => "1111", 509 => "1111", 510 => "1111", 511 => "1111");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

