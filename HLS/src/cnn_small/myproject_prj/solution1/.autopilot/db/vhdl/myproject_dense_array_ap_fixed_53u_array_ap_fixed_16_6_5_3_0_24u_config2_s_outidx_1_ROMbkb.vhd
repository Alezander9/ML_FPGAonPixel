-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_outidx_1_ROMbkb is 
    generic(
             DataWidth     : integer := 5; 
             AddressWidth     : integer := 11; 
             AddressRange    : integer := 1272
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of myproject_dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_s_outidx_1_ROMbkb is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00000", 1 => "00000", 2 => "00000", 3 => "00000", 
    4 => "00000", 5 => "00000", 6 => "00000", 7 => "00000", 
    8 => "00000", 9 => "00000", 10 => "00000", 11 => "00000", 
    12 => "00000", 13 => "00000", 14 => "00000", 15 => "00000", 
    16 => "00000", 17 => "00000", 18 => "00000", 19 => "00000", 
    20 => "00000", 21 => "00000", 22 => "00000", 23 => "00000", 
    24 => "00000", 25 => "00000", 26 => "00000", 27 => "00000", 
    28 => "00000", 29 => "00000", 30 => "00000", 31 => "00000", 
    32 => "00000", 33 => "00000", 34 => "00000", 35 => "00000", 
    36 => "00000", 37 => "00000", 38 => "00000", 39 => "00000", 
    40 => "00000", 41 => "00000", 42 => "00000", 43 => "00000", 
    44 => "00000", 45 => "00000", 46 => "00000", 47 => "00000", 
    48 => "00000", 49 => "00000", 50 => "00000", 51 => "00000", 
    52 => "00000", 53 => "00001", 54 => "00001", 55 => "00001", 
    56 => "00001", 57 => "00001", 58 => "00001", 59 => "00001", 
    60 => "00001", 61 => "00001", 62 => "00001", 63 => "00001", 
    64 => "00001", 65 => "00001", 66 => "00001", 67 => "00001", 
    68 => "00001", 69 => "00001", 70 => "00001", 71 => "00001", 
    72 => "00001", 73 => "00001", 74 => "00001", 75 => "00001", 
    76 => "00001", 77 => "00001", 78 => "00001", 79 => "00001", 
    80 => "00001", 81 => "00001", 82 => "00001", 83 => "00001", 
    84 => "00001", 85 => "00001", 86 => "00001", 87 => "00001", 
    88 => "00001", 89 => "00001", 90 => "00001", 91 => "00001", 
    92 => "00001", 93 => "00001", 94 => "00001", 95 => "00001", 
    96 => "00001", 97 => "00001", 98 => "00001", 99 => "00001", 
    100 => "00001", 101 => "00001", 102 => "00001", 103 => "00001", 
    104 => "00001", 105 => "00001", 106 => "00010", 107 => "00010", 
    108 => "00010", 109 => "00010", 110 => "00010", 111 => "00010", 
    112 => "00010", 113 => "00010", 114 => "00010", 115 => "00010", 
    116 => "00010", 117 => "00010", 118 => "00010", 119 => "00010", 
    120 => "00010", 121 => "00010", 122 => "00010", 123 => "00010", 
    124 => "00010", 125 => "00010", 126 => "00010", 127 => "00010", 
    128 => "00010", 129 => "00010", 130 => "00010", 131 => "00010", 
    132 => "00010", 133 => "00010", 134 => "00010", 135 => "00010", 
    136 => "00010", 137 => "00010", 138 => "00010", 139 => "00010", 
    140 => "00010", 141 => "00010", 142 => "00010", 143 => "00010", 
    144 => "00010", 145 => "00010", 146 => "00010", 147 => "00010", 
    148 => "00010", 149 => "00010", 150 => "00010", 151 => "00010", 
    152 => "00010", 153 => "00010", 154 => "00010", 155 => "00010", 
    156 => "00010", 157 => "00010", 158 => "00010", 159 => "00011", 
    160 => "00011", 161 => "00011", 162 => "00011", 163 => "00011", 
    164 => "00011", 165 => "00011", 166 => "00011", 167 => "00011", 
    168 => "00011", 169 => "00011", 170 => "00011", 171 => "00011", 
    172 => "00011", 173 => "00011", 174 => "00011", 175 => "00011", 
    176 => "00011", 177 => "00011", 178 => "00011", 179 => "00011", 
    180 => "00011", 181 => "00011", 182 => "00011", 183 => "00011", 
    184 => "00011", 185 => "00011", 186 => "00011", 187 => "00011", 
    188 => "00011", 189 => "00011", 190 => "00011", 191 => "00011", 
    192 => "00011", 193 => "00011", 194 => "00011", 195 => "00011", 
    196 => "00011", 197 => "00011", 198 => "00011", 199 => "00011", 
    200 => "00011", 201 => "00011", 202 => "00011", 203 => "00011", 
    204 => "00011", 205 => "00011", 206 => "00011", 207 => "00011", 
    208 => "00011", 209 => "00011", 210 => "00011", 211 => "00011", 
    212 => "00100", 213 => "00100", 214 => "00100", 215 => "00100", 
    216 => "00100", 217 => "00100", 218 => "00100", 219 => "00100", 
    220 => "00100", 221 => "00100", 222 => "00100", 223 => "00100", 
    224 => "00100", 225 => "00100", 226 => "00100", 227 => "00100", 
    228 => "00100", 229 => "00100", 230 => "00100", 231 => "00100", 
    232 => "00100", 233 => "00100", 234 => "00100", 235 => "00100", 
    236 => "00100", 237 => "00100", 238 => "00100", 239 => "00100", 
    240 => "00100", 241 => "00100", 242 => "00100", 243 => "00100", 
    244 => "00100", 245 => "00100", 246 => "00100", 247 => "00100", 
    248 => "00100", 249 => "00100", 250 => "00100", 251 => "00100", 
    252 => "00100", 253 => "00100", 254 => "00100", 255 => "00100", 
    256 => "00100", 257 => "00100", 258 => "00100", 259 => "00100", 
    260 => "00100", 261 => "00100", 262 => "00100", 263 => "00100", 
    264 => "00100", 265 => "00101", 266 => "00101", 267 => "00101", 
    268 => "00101", 269 => "00101", 270 => "00101", 271 => "00101", 
    272 => "00101", 273 => "00101", 274 => "00101", 275 => "00101", 
    276 => "00101", 277 => "00101", 278 => "00101", 279 => "00101", 
    280 => "00101", 281 => "00101", 282 => "00101", 283 => "00101", 
    284 => "00101", 285 => "00101", 286 => "00101", 287 => "00101", 
    288 => "00101", 289 => "00101", 290 => "00101", 291 => "00101", 
    292 => "00101", 293 => "00101", 294 => "00101", 295 => "00101", 
    296 => "00101", 297 => "00101", 298 => "00101", 299 => "00101", 
    300 => "00101", 301 => "00101", 302 => "00101", 303 => "00101", 
    304 => "00101", 305 => "00101", 306 => "00101", 307 => "00101", 
    308 => "00101", 309 => "00101", 310 => "00101", 311 => "00101", 
    312 => "00101", 313 => "00101", 314 => "00101", 315 => "00101", 
    316 => "00101", 317 => "00101", 318 => "00110", 319 => "00110", 
    320 => "00110", 321 => "00110", 322 => "00110", 323 => "00110", 
    324 => "00110", 325 => "00110", 326 => "00110", 327 => "00110", 
    328 => "00110", 329 => "00110", 330 => "00110", 331 => "00110", 
    332 => "00110", 333 => "00110", 334 => "00110", 335 => "00110", 
    336 => "00110", 337 => "00110", 338 => "00110", 339 => "00110", 
    340 => "00110", 341 => "00110", 342 => "00110", 343 => "00110", 
    344 => "00110", 345 => "00110", 346 => "00110", 347 => "00110", 
    348 => "00110", 349 => "00110", 350 => "00110", 351 => "00110", 
    352 => "00110", 353 => "00110", 354 => "00110", 355 => "00110", 
    356 => "00110", 357 => "00110", 358 => "00110", 359 => "00110", 
    360 => "00110", 361 => "00110", 362 => "00110", 363 => "00110", 
    364 => "00110", 365 => "00110", 366 => "00110", 367 => "00110", 
    368 => "00110", 369 => "00110", 370 => "00110", 371 => "00111", 
    372 => "00111", 373 => "00111", 374 => "00111", 375 => "00111", 
    376 => "00111", 377 => "00111", 378 => "00111", 379 => "00111", 
    380 => "00111", 381 => "00111", 382 => "00111", 383 => "00111", 
    384 => "00111", 385 => "00111", 386 => "00111", 387 => "00111", 
    388 => "00111", 389 => "00111", 390 => "00111", 391 => "00111", 
    392 => "00111", 393 => "00111", 394 => "00111", 395 => "00111", 
    396 => "00111", 397 => "00111", 398 => "00111", 399 => "00111", 
    400 => "00111", 401 => "00111", 402 => "00111", 403 => "00111", 
    404 => "00111", 405 => "00111", 406 => "00111", 407 => "00111", 
    408 => "00111", 409 => "00111", 410 => "00111", 411 => "00111", 
    412 => "00111", 413 => "00111", 414 => "00111", 415 => "00111", 
    416 => "00111", 417 => "00111", 418 => "00111", 419 => "00111", 
    420 => "00111", 421 => "00111", 422 => "00111", 423 => "00111", 
    424 => "01000", 425 => "01000", 426 => "01000", 427 => "01000", 
    428 => "01000", 429 => "01000", 430 => "01000", 431 => "01000", 
    432 => "01000", 433 => "01000", 434 => "01000", 435 => "01000", 
    436 => "01000", 437 => "01000", 438 => "01000", 439 => "01000", 
    440 => "01000", 441 => "01000", 442 => "01000", 443 => "01000", 
    444 => "01000", 445 => "01000", 446 => "01000", 447 => "01000", 
    448 => "01000", 449 => "01000", 450 => "01000", 451 => "01000", 
    452 => "01000", 453 => "01000", 454 => "01000", 455 => "01000", 
    456 => "01000", 457 => "01000", 458 => "01000", 459 => "01000", 
    460 => "01000", 461 => "01000", 462 => "01000", 463 => "01000", 
    464 => "01000", 465 => "01000", 466 => "01000", 467 => "01000", 
    468 => "01000", 469 => "01000", 470 => "01000", 471 => "01000", 
    472 => "01000", 473 => "01000", 474 => "01000", 475 => "01000", 
    476 => "01000", 477 => "01001", 478 => "01001", 479 => "01001", 
    480 => "01001", 481 => "01001", 482 => "01001", 483 => "01001", 
    484 => "01001", 485 => "01001", 486 => "01001", 487 => "01001", 
    488 => "01001", 489 => "01001", 490 => "01001", 491 => "01001", 
    492 => "01001", 493 => "01001", 494 => "01001", 495 => "01001", 
    496 => "01001", 497 => "01001", 498 => "01001", 499 => "01001", 
    500 => "01001", 501 => "01001", 502 => "01001", 503 => "01001", 
    504 => "01001", 505 => "01001", 506 => "01001", 507 => "01001", 
    508 => "01001", 509 => "01001", 510 => "01001", 511 => "01001", 
    512 => "01001", 513 => "01001", 514 => "01001", 515 => "01001", 
    516 => "01001", 517 => "01001", 518 => "01001", 519 => "01001", 
    520 => "01001", 521 => "01001", 522 => "01001", 523 => "01001", 
    524 => "01001", 525 => "01001", 526 => "01001", 527 => "01001", 
    528 => "01001", 529 => "01001", 530 => "01010", 531 => "01010", 
    532 => "01010", 533 => "01010", 534 => "01010", 535 => "01010", 
    536 => "01010", 537 => "01010", 538 => "01010", 539 => "01010", 
    540 => "01010", 541 => "01010", 542 => "01010", 543 => "01010", 
    544 => "01010", 545 => "01010", 546 => "01010", 547 => "01010", 
    548 => "01010", 549 => "01010", 550 => "01010", 551 => "01010", 
    552 => "01010", 553 => "01010", 554 => "01010", 555 => "01010", 
    556 => "01010", 557 => "01010", 558 => "01010", 559 => "01010", 
    560 => "01010", 561 => "01010", 562 => "01010", 563 => "01010", 
    564 => "01010", 565 => "01010", 566 => "01010", 567 => "01010", 
    568 => "01010", 569 => "01010", 570 => "01010", 571 => "01010", 
    572 => "01010", 573 => "01010", 574 => "01010", 575 => "01010", 
    576 => "01010", 577 => "01010", 578 => "01010", 579 => "01010", 
    580 => "01010", 581 => "01010", 582 => "01010", 583 => "01011", 
    584 => "01011", 585 => "01011", 586 => "01011", 587 => "01011", 
    588 => "01011", 589 => "01011", 590 => "01011", 591 => "01011", 
    592 => "01011", 593 => "01011", 594 => "01011", 595 => "01011", 
    596 => "01011", 597 => "01011", 598 => "01011", 599 => "01011", 
    600 => "01011", 601 => "01011", 602 => "01011", 603 => "01011", 
    604 => "01011", 605 => "01011", 606 => "01011", 607 => "01011", 
    608 => "01011", 609 => "01011", 610 => "01011", 611 => "01011", 
    612 => "01011", 613 => "01011", 614 => "01011", 615 => "01011", 
    616 => "01011", 617 => "01011", 618 => "01011", 619 => "01011", 
    620 => "01011", 621 => "01011", 622 => "01011", 623 => "01011", 
    624 => "01011", 625 => "01011", 626 => "01011", 627 => "01011", 
    628 => "01011", 629 => "01011", 630 => "01011", 631 => "01011", 
    632 => "01011", 633 => "01011", 634 => "01011", 635 => "01011", 
    636 => "01100", 637 => "01100", 638 => "01100", 639 => "01100", 
    640 => "01100", 641 => "01100", 642 => "01100", 643 => "01100", 
    644 => "01100", 645 => "01100", 646 => "01100", 647 => "01100", 
    648 => "01100", 649 => "01100", 650 => "01100", 651 => "01100", 
    652 => "01100", 653 => "01100", 654 => "01100", 655 => "01100", 
    656 => "01100", 657 => "01100", 658 => "01100", 659 => "01100", 
    660 => "01100", 661 => "01100", 662 => "01100", 663 => "01100", 
    664 => "01100", 665 => "01100", 666 => "01100", 667 => "01100", 
    668 => "01100", 669 => "01100", 670 => "01100", 671 => "01100", 
    672 => "01100", 673 => "01100", 674 => "01100", 675 => "01100", 
    676 => "01100", 677 => "01100", 678 => "01100", 679 => "01100", 
    680 => "01100", 681 => "01100", 682 => "01100", 683 => "01100", 
    684 => "01100", 685 => "01100", 686 => "01100", 687 => "01100", 
    688 => "01100", 689 => "01101", 690 => "01101", 691 => "01101", 
    692 => "01101", 693 => "01101", 694 => "01101", 695 => "01101", 
    696 => "01101", 697 => "01101", 698 => "01101", 699 => "01101", 
    700 => "01101", 701 => "01101", 702 => "01101", 703 => "01101", 
    704 => "01101", 705 => "01101", 706 => "01101", 707 => "01101", 
    708 => "01101", 709 => "01101", 710 => "01101", 711 => "01101", 
    712 => "01101", 713 => "01101", 714 => "01101", 715 => "01101", 
    716 => "01101", 717 => "01101", 718 => "01101", 719 => "01101", 
    720 => "01101", 721 => "01101", 722 => "01101", 723 => "01101", 
    724 => "01101", 725 => "01101", 726 => "01101", 727 => "01101", 
    728 => "01101", 729 => "01101", 730 => "01101", 731 => "01101", 
    732 => "01101", 733 => "01101", 734 => "01101", 735 => "01101", 
    736 => "01101", 737 => "01101", 738 => "01101", 739 => "01101", 
    740 => "01101", 741 => "01101", 742 => "01110", 743 => "01110", 
    744 => "01110", 745 => "01110", 746 => "01110", 747 => "01110", 
    748 => "01110", 749 => "01110", 750 => "01110", 751 => "01110", 
    752 => "01110", 753 => "01110", 754 => "01110", 755 => "01110", 
    756 => "01110", 757 => "01110", 758 => "01110", 759 => "01110", 
    760 => "01110", 761 => "01110", 762 => "01110", 763 => "01110", 
    764 => "01110", 765 => "01110", 766 => "01110", 767 => "01110", 
    768 => "01110", 769 => "01110", 770 => "01110", 771 => "01110", 
    772 => "01110", 773 => "01110", 774 => "01110", 775 => "01110", 
    776 => "01110", 777 => "01110", 778 => "01110", 779 => "01110", 
    780 => "01110", 781 => "01110", 782 => "01110", 783 => "01110", 
    784 => "01110", 785 => "01110", 786 => "01110", 787 => "01110", 
    788 => "01110", 789 => "01110", 790 => "01110", 791 => "01110", 
    792 => "01110", 793 => "01110", 794 => "01110", 795 => "01111", 
    796 => "01111", 797 => "01111", 798 => "01111", 799 => "01111", 
    800 => "01111", 801 => "01111", 802 => "01111", 803 => "01111", 
    804 => "01111", 805 => "01111", 806 => "01111", 807 => "01111", 
    808 => "01111", 809 => "01111", 810 => "01111", 811 => "01111", 
    812 => "01111", 813 => "01111", 814 => "01111", 815 => "01111", 
    816 => "01111", 817 => "01111", 818 => "01111", 819 => "01111", 
    820 => "01111", 821 => "01111", 822 => "01111", 823 => "01111", 
    824 => "01111", 825 => "01111", 826 => "01111", 827 => "01111", 
    828 => "01111", 829 => "01111", 830 => "01111", 831 => "01111", 
    832 => "01111", 833 => "01111", 834 => "01111", 835 => "01111", 
    836 => "01111", 837 => "01111", 838 => "01111", 839 => "01111", 
    840 => "01111", 841 => "01111", 842 => "01111", 843 => "01111", 
    844 => "01111", 845 => "01111", 846 => "01111", 847 => "01111", 
    848 => "10000", 849 => "10000", 850 => "10000", 851 => "10000", 
    852 => "10000", 853 => "10000", 854 => "10000", 855 => "10000", 
    856 => "10000", 857 => "10000", 858 => "10000", 859 => "10000", 
    860 => "10000", 861 => "10000", 862 => "10000", 863 => "10000", 
    864 => "10000", 865 => "10000", 866 => "10000", 867 => "10000", 
    868 => "10000", 869 => "10000", 870 => "10000", 871 => "10000", 
    872 => "10000", 873 => "10000", 874 => "10000", 875 => "10000", 
    876 => "10000", 877 => "10000", 878 => "10000", 879 => "10000", 
    880 => "10000", 881 => "10000", 882 => "10000", 883 => "10000", 
    884 => "10000", 885 => "10000", 886 => "10000", 887 => "10000", 
    888 => "10000", 889 => "10000", 890 => "10000", 891 => "10000", 
    892 => "10000", 893 => "10000", 894 => "10000", 895 => "10000", 
    896 => "10000", 897 => "10000", 898 => "10000", 899 => "10000", 
    900 => "10000", 901 => "10001", 902 => "10001", 903 => "10001", 
    904 => "10001", 905 => "10001", 906 => "10001", 907 => "10001", 
    908 => "10001", 909 => "10001", 910 => "10001", 911 => "10001", 
    912 => "10001", 913 => "10001", 914 => "10001", 915 => "10001", 
    916 => "10001", 917 => "10001", 918 => "10001", 919 => "10001", 
    920 => "10001", 921 => "10001", 922 => "10001", 923 => "10001", 
    924 => "10001", 925 => "10001", 926 => "10001", 927 => "10001", 
    928 => "10001", 929 => "10001", 930 => "10001", 931 => "10001", 
    932 => "10001", 933 => "10001", 934 => "10001", 935 => "10001", 
    936 => "10001", 937 => "10001", 938 => "10001", 939 => "10001", 
    940 => "10001", 941 => "10001", 942 => "10001", 943 => "10001", 
    944 => "10001", 945 => "10001", 946 => "10001", 947 => "10001", 
    948 => "10001", 949 => "10001", 950 => "10001", 951 => "10001", 
    952 => "10001", 953 => "10001", 954 => "10010", 955 => "10010", 
    956 => "10010", 957 => "10010", 958 => "10010", 959 => "10010", 
    960 => "10010", 961 => "10010", 962 => "10010", 963 => "10010", 
    964 => "10010", 965 => "10010", 966 => "10010", 967 => "10010", 
    968 => "10010", 969 => "10010", 970 => "10010", 971 => "10010", 
    972 => "10010", 973 => "10010", 974 => "10010", 975 => "10010", 
    976 => "10010", 977 => "10010", 978 => "10010", 979 => "10010", 
    980 => "10010", 981 => "10010", 982 => "10010", 983 => "10010", 
    984 => "10010", 985 => "10010", 986 => "10010", 987 => "10010", 
    988 => "10010", 989 => "10010", 990 => "10010", 991 => "10010", 
    992 => "10010", 993 => "10010", 994 => "10010", 995 => "10010", 
    996 => "10010", 997 => "10010", 998 => "10010", 999 => "10010", 
    1000 => "10010", 1001 => "10010", 1002 => "10010", 1003 => "10010", 
    1004 => "10010", 1005 => "10010", 1006 => "10010", 1007 => "10011", 
    1008 => "10011", 1009 => "10011", 1010 => "10011", 1011 => "10011", 
    1012 => "10011", 1013 => "10011", 1014 => "10011", 1015 => "10011", 
    1016 => "10011", 1017 => "10011", 1018 => "10011", 1019 => "10011", 
    1020 => "10011", 1021 => "10011", 1022 => "10011", 1023 => "10011", 
    1024 => "10011", 1025 => "10011", 1026 => "10011", 1027 => "10011", 
    1028 => "10011", 1029 => "10011", 1030 => "10011", 1031 => "10011", 
    1032 => "10011", 1033 => "10011", 1034 => "10011", 1035 => "10011", 
    1036 => "10011", 1037 => "10011", 1038 => "10011", 1039 => "10011", 
    1040 => "10011", 1041 => "10011", 1042 => "10011", 1043 => "10011", 
    1044 => "10011", 1045 => "10011", 1046 => "10011", 1047 => "10011", 
    1048 => "10011", 1049 => "10011", 1050 => "10011", 1051 => "10011", 
    1052 => "10011", 1053 => "10011", 1054 => "10011", 1055 => "10011", 
    1056 => "10011", 1057 => "10011", 1058 => "10011", 1059 => "10011", 
    1060 => "10100", 1061 => "10100", 1062 => "10100", 1063 => "10100", 
    1064 => "10100", 1065 => "10100", 1066 => "10100", 1067 => "10100", 
    1068 => "10100", 1069 => "10100", 1070 => "10100", 1071 => "10100", 
    1072 => "10100", 1073 => "10100", 1074 => "10100", 1075 => "10100", 
    1076 => "10100", 1077 => "10100", 1078 => "10100", 1079 => "10100", 
    1080 => "10100", 1081 => "10100", 1082 => "10100", 1083 => "10100", 
    1084 => "10100", 1085 => "10100", 1086 => "10100", 1087 => "10100", 
    1088 => "10100", 1089 => "10100", 1090 => "10100", 1091 => "10100", 
    1092 => "10100", 1093 => "10100", 1094 => "10100", 1095 => "10100", 
    1096 => "10100", 1097 => "10100", 1098 => "10100", 1099 => "10100", 
    1100 => "10100", 1101 => "10100", 1102 => "10100", 1103 => "10100", 
    1104 => "10100", 1105 => "10100", 1106 => "10100", 1107 => "10100", 
    1108 => "10100", 1109 => "10100", 1110 => "10100", 1111 => "10100", 
    1112 => "10100", 1113 => "10101", 1114 => "10101", 1115 => "10101", 
    1116 => "10101", 1117 => "10101", 1118 => "10101", 1119 => "10101", 
    1120 => "10101", 1121 => "10101", 1122 => "10101", 1123 => "10101", 
    1124 => "10101", 1125 => "10101", 1126 => "10101", 1127 => "10101", 
    1128 => "10101", 1129 => "10101", 1130 => "10101", 1131 => "10101", 
    1132 => "10101", 1133 => "10101", 1134 => "10101", 1135 => "10101", 
    1136 => "10101", 1137 => "10101", 1138 => "10101", 1139 => "10101", 
    1140 => "10101", 1141 => "10101", 1142 => "10101", 1143 => "10101", 
    1144 => "10101", 1145 => "10101", 1146 => "10101", 1147 => "10101", 
    1148 => "10101", 1149 => "10101", 1150 => "10101", 1151 => "10101", 
    1152 => "10101", 1153 => "10101", 1154 => "10101", 1155 => "10101", 
    1156 => "10101", 1157 => "10101", 1158 => "10101", 1159 => "10101", 
    1160 => "10101", 1161 => "10101", 1162 => "10101", 1163 => "10101", 
    1164 => "10101", 1165 => "10101", 1166 => "10110", 1167 => "10110", 
    1168 => "10110", 1169 => "10110", 1170 => "10110", 1171 => "10110", 
    1172 => "10110", 1173 => "10110", 1174 => "10110", 1175 => "10110", 
    1176 => "10110", 1177 => "10110", 1178 => "10110", 1179 => "10110", 
    1180 => "10110", 1181 => "10110", 1182 => "10110", 1183 => "10110", 
    1184 => "10110", 1185 => "10110", 1186 => "10110", 1187 => "10110", 
    1188 => "10110", 1189 => "10110", 1190 => "10110", 1191 => "10110", 
    1192 => "10110", 1193 => "10110", 1194 => "10110", 1195 => "10110", 
    1196 => "10110", 1197 => "10110", 1198 => "10110", 1199 => "10110", 
    1200 => "10110", 1201 => "10110", 1202 => "10110", 1203 => "10110", 
    1204 => "10110", 1205 => "10110", 1206 => "10110", 1207 => "10110", 
    1208 => "10110", 1209 => "10110", 1210 => "10110", 1211 => "10110", 
    1212 => "10110", 1213 => "10110", 1214 => "10110", 1215 => "10110", 
    1216 => "10110", 1217 => "10110", 1218 => "10110", 1219 => "10111", 
    1220 => "10111", 1221 => "10111", 1222 => "10111", 1223 => "10111", 
    1224 => "10111", 1225 => "10111", 1226 => "10111", 1227 => "10111", 
    1228 => "10111", 1229 => "10111", 1230 => "10111", 1231 => "10111", 
    1232 => "10111", 1233 => "10111", 1234 => "10111", 1235 => "10111", 
    1236 => "10111", 1237 => "10111", 1238 => "10111", 1239 => "10111", 
    1240 => "10111", 1241 => "10111", 1242 => "10111", 1243 => "10111", 
    1244 => "10111", 1245 => "10111", 1246 => "10111", 1247 => "10111", 
    1248 => "10111", 1249 => "10111", 1250 => "10111", 1251 => "10111", 
    1252 => "10111", 1253 => "10111", 1254 => "10111", 1255 => "10111", 
    1256 => "10111", 1257 => "10111", 1258 => "10111", 1259 => "10111", 
    1260 => "10111", 1261 => "10111", 1262 => "10111", 1263 => "10111", 
    1264 => "10111", 1265 => "10111", 1266 => "10111", 1267 => "10111", 
    1268 => "10111", 1269 => "10111", 1270 => "10111", 1271 => "10111");



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

