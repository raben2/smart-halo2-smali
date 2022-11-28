.class public Lbike/smarthalo/sdk/commands/CommandsConstants;
.super Ljava/lang/Object;
.source "CommandsConstants.java"


# static fields
.field public static final FRONTLIGHT_BLINK:I = 0x1

.field public static final FRONTLIGHT_CONSTANT:I = 0x0

.field public static final MAX_COMMAND_LENGTH:I = 0x50

.field public static final NAV_BACK:I = 0x8

.field public static final NAV_BACK_LEFT:I = 0x7

.field public static final NAV_BACK_RIGHT:I = 0x4

.field public static final NAV_DESTINATION:I = 0x0

.field public static final NAV_FRONT:I = 0x1

.field public static final NAV_FRONT_LEFT:I = 0x5

.field public static final NAV_FRONT_RIGHT:I = 0x2

.field public static final NAV_LEFT:I = 0x6

.field public static final NAV_MODE_CORRECTION:I = 0x0

.field public static final NAV_MODE_NORMAL:I = 0x1

.field public static final NAV_RIGHT:I = 0x3

.field public static final cmd_animOff:[B

.field public static final cmd_arm:[B

.field public static final cmd_authenticate:[B

.field public static final cmd_carousel:[B

.field public static final cmd_carousel_position:[B

.field public static final cmd_clock:[B

.field public static final cmd_clock_off:[B

.field public static final cmd_compass:[B

.field public static final cmd_compassCalibrate:[B

.field public static final cmd_compassOff:[B

.field public static final cmd_demo:[B

.field public static final cmd_deviceStmDfuCrc:[B

.field public static final cmd_deviceStmDfuData:[B

.field public static final cmd_deviceStmDfuInstall:[B

.field public static final cmd_disconnect:[B

.field public static final cmd_enterBootloader:[B

.field public static final cmd_experimental_nav_destination_angle:[B

.field public static final cmd_experimental_oled_brightness:[B

.field public static final cmd_experimental_oled_contrast:[B

.field public static final cmd_experimental_show_oled:[B

.field public static final cmd_experimental_stop_oled:[B

.field public static final cmd_experimental_swipe_calibration:[B

.field public static final cmd_experimental_touch_calibration:[B

.field public static final cmd_fitness_intro:[B

.field public static final cmd_forceInstallGolden:[B

.field public static final cmd_front_external_toggle:[B

.field public static final cmd_frontlight:[B

.field public static final cmd_frontlightSettings:[B

.field public static final cmd_getPeriphPubKey:[B

.field public static final cmd_getSeed:[B

.field public static final cmd_getSerial:[B

.field public static final cmd_getState:[B

.field public static final cmd_getVersions:[B

.field public static final cmd_hb:[B

.field public static final cmd_hbOff:[B

.field public static final cmd_localization:[B

.field public static final cmd_logo:[B

.field public static final cmd_lowBat:[B

.field public static final cmd_nav:[B

.field public static final cmd_navAngle:[B

.field public static final cmd_navOff:[B

.field public static final cmd_navReroute:[B

.field public static final cmd_nav_pointer:[B

.field public static final cmd_nav_pointer_off:[B

.field public static final cmd_nav_pointer_standby:[B

.field public static final cmd_notif:[B

.field public static final cmd_notif_off:[B

.field public static final cmd_play:[B

.field public static final cmd_pointer_with_intro:[B

.field public static final cmd_progress:[B

.field public static final cmd_progressOff:[B

.field public static final cmd_report:[B

.field public static final cmd_roundabout:[B

.field public static final cmd_roundabout_oled:[B

.field public static final cmd_setBrightness:[B

.field public static final cmd_setCentralPubKey:[B

.field public static final cmd_setConfig:[B

.field public static final cmd_setName:[B

.field public static final cmd_setPassword:[B

.field public static final cmd_show_state_of_charger:[B

.field public static final cmd_shutdown:[B

.field public static final cmd_speedometer:[B

.field public static final cmd_speedometerOff:[B

.field public static final cmd_speedometer_intro:[B

.field public static final cmd_stop:[B

.field public static final cmd_touchTest:[B

.field public static final cmd_touch_onboarding:[B

.field public static final cmd_touch_sounds:[B

.field public static final cmd_turn_by_turn_intro:[B

.field public static final ret_denied:B = 0x2t

.field public static final ret_fail:B = 0x1t

.field public static final ret_ok:B = 0x0t

.field public static final ret_unimplemented:B = 0x3t

.field public static final ret_unnecessary:B = 0x4t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 32
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_logo:[B

    .line 33
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav:[B

    .line 34
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navReroute:[B

    .line 35
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navOff:[B

    .line 36
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlight:[B

    .line 37
    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_progress:[B

    .line 38
    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_progressOff:[B

    .line 39
    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_notif:[B

    .line 40
    new-array v1, v0, [B

    fill-array-data v1, :array_8

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_notif_off:[B

    .line 41
    new-array v1, v0, [B

    fill-array-data v1, :array_9

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_hb:[B

    .line 42
    new-array v1, v0, [B

    fill-array-data v1, :array_a

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_hbOff:[B

    .line 43
    new-array v1, v0, [B

    fill-array-data v1, :array_b

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compass:[B

    .line 44
    new-array v1, v0, [B

    fill-array-data v1, :array_c

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compassOff:[B

    .line 45
    new-array v1, v0, [B

    fill-array-data v1, :array_d

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_disconnect:[B

    .line 46
    new-array v1, v0, [B

    fill-array-data v1, :array_e

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_animOff:[B

    .line 47
    new-array v1, v0, [B

    fill-array-data v1, :array_f

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setBrightness:[B

    .line 48
    new-array v1, v0, [B

    fill-array-data v1, :array_10

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlightSettings:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_11

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navAngle:[B

    .line 50
    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometer:[B

    .line 51
    new-array v1, v0, [B

    fill-array-data v1, :array_13

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometerOff:[B

    .line 52
    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout:[B

    .line 53
    new-array v1, v0, [B

    fill-array-data v1, :array_15

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_lowBat:[B

    .line 54
    new-array v1, v0, [B

    fill-array-data v1, :array_16

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer:[B

    .line 55
    new-array v1, v0, [B

    fill-array-data v1, :array_17

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_off:[B

    .line 56
    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_standby:[B

    .line 57
    new-array v1, v0, [B

    fill-array-data v1, :array_19

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_demo:[B

    .line 58
    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometer_intro:[B

    .line 59
    new-array v1, v0, [B

    fill-array-data v1, :array_1b

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_fitness_intro:[B

    .line 60
    new-array v1, v0, [B

    fill-array-data v1, :array_1c

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock:[B

    .line 61
    new-array v1, v0, [B

    fill-array-data v1, :array_1d

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock_off:[B

    .line 62
    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_front_external_toggle:[B

    .line 63
    new-array v1, v0, [B

    fill-array-data v1, :array_1f

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_show_state_of_charger:[B

    .line 64
    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_turn_by_turn_intro:[B

    .line 65
    new-array v1, v0, [B

    fill-array-data v1, :array_21

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_pointer_with_intro:[B

    .line 66
    new-array v1, v0, [B

    fill-array-data v1, :array_22

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout_oled:[B

    .line 67
    new-array v1, v0, [B

    fill-array-data v1, :array_23

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel:[B

    .line 68
    new-array v1, v0, [B

    fill-array-data v1, :array_24

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel_position:[B

    .line 69
    new-array v1, v0, [B

    fill-array-data v1, :array_25

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touch_onboarding:[B

    .line 71
    new-array v1, v0, [B

    fill-array-data v1, :array_26

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_play:[B

    .line 72
    new-array v1, v0, [B

    fill-array-data v1, :array_27

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_stop:[B

    .line 73
    new-array v1, v0, [B

    fill-array-data v1, :array_28

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touch_sounds:[B

    .line 75
    new-array v1, v0, [B

    fill-array-data v1, :array_29

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_report:[B

    .line 76
    new-array v1, v0, [B

    fill-array-data v1, :array_2a

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getSeed:[B

    .line 77
    new-array v1, v0, [B

    fill-array-data v1, :array_2b

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_arm:[B

    .line 78
    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setConfig:[B

    .line 80
    new-array v1, v0, [B

    fill-array-data v1, :array_2d

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_enterBootloader:[B

    .line 81
    new-array v1, v0, [B

    fill-array-data v1, :array_2e

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getState:[B

    .line 82
    new-array v1, v0, [B

    fill-array-data v1, :array_2f

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setName:[B

    .line 83
    new-array v1, v0, [B

    fill-array-data v1, :array_30

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compassCalibrate:[B

    .line 84
    new-array v1, v0, [B

    fill-array-data v1, :array_31

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_shutdown:[B

    .line 85
    new-array v1, v0, [B

    fill-array-data v1, :array_32

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getSerial:[B

    .line 86
    new-array v1, v0, [B

    fill-array-data v1, :array_33

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuCrc:[B

    .line 87
    new-array v1, v0, [B

    fill-array-data v1, :array_34

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuData:[B

    .line 88
    new-array v1, v0, [B

    fill-array-data v1, :array_35

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuInstall:[B

    .line 89
    new-array v1, v0, [B

    fill-array-data v1, :array_36

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_forceInstallGolden:[B

    .line 90
    new-array v1, v0, [B

    fill-array-data v1, :array_37

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_localization:[B

    .line 92
    new-array v1, v0, [B

    fill-array-data v1, :array_38

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getVersions:[B

    .line 93
    new-array v1, v0, [B

    fill-array-data v1, :array_39

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getPeriphPubKey:[B

    .line 94
    new-array v1, v0, [B

    fill-array-data v1, :array_3a

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setCentralPubKey:[B

    .line 95
    new-array v1, v0, [B

    fill-array-data v1, :array_3b

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_authenticate:[B

    .line 96
    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setPassword:[B

    .line 98
    new-array v1, v0, [B

    fill-array-data v1, :array_3d

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touchTest:[B

    .line 100
    new-array v1, v0, [B

    fill-array-data v1, :array_3e

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_nav_destination_angle:[B

    .line 101
    new-array v1, v0, [B

    fill-array-data v1, :array_3f

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_show_oled:[B

    .line 102
    new-array v1, v0, [B

    fill-array-data v1, :array_40

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_stop_oled:[B

    .line 103
    new-array v1, v0, [B

    fill-array-data v1, :array_41

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_contrast:[B

    .line 104
    new-array v1, v0, [B

    fill-array-data v1, :array_42

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_brightness:[B

    .line 105
    new-array v1, v0, [B

    fill-array-data v1, :array_43

    sput-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_touch_calibration:[B

    .line 106
    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_swipe_calibration:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x3t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x4t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x5t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x6t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x7t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x1t
        0x8t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x1t
        0x9t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1t
        0xat
    .end array-data

    nop

    :array_b
    .array-data 1
        0x1t
        0xbt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x1t
        0xct
    .end array-data

    nop

    :array_d
    .array-data 1
        0x1t
        0xdt
    .end array-data

    nop

    :array_e
    .array-data 1
        0x1t
        0xet
    .end array-data

    nop

    :array_f
    .array-data 1
        0x1t
        0xft
    .end array-data

    nop

    :array_10
    .array-data 1
        0x1t
        0x10t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x1t
        0x11t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x1t
        0x12t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x1t
        0x13t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x1t
        0x14t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x1t
        0x15t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x1t
        0x16t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x1t
        0x17t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x1t
        0x18t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x1t
        0x19t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x1t
        0x1at
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x1t
        0x1bt
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x1t
        0x1ct
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x1t
        0x1dt
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x1t
        0x1et
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x1t
        0x1ft
    .end array-data

    nop

    :array_20
    .array-data 1
        0x1t
        0x20t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x1t
        0x21t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x1t
        0x22t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x1t
        0x23t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x1t
        0x24t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x1t
        0x25t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x3t
        0x1t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x3t
        0x2t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x3t
        0x3t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x4t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x4t
        0x1t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x4t
        0x2t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x4t
        0x3t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x4t
        0x4t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x4t
        0x5t
    .end array-data

    nop

    :array_33
    .array-data 1
        0x4t
        0x7t
    .end array-data

    nop

    :array_34
    .array-data 1
        0x4t
        0x8t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x4t
        0x9t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x4t
        0xat
    .end array-data

    nop

    :array_37
    .array-data 1
        0x4t
        0x6t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x0t
        0x3t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x0t
        0x4t
    .end array-data

    nop

    :array_3d
    .array-data 1
        -0xet
        0x0t
    .end array-data

    nop

    :array_3e
    .array-data 1
        -0x8t
        0xdt
    .end array-data

    nop

    :array_3f
    .array-data 1
        -0x8t
        0x15t
    .end array-data

    nop

    :array_40
    .array-data 1
        -0x8t
        0x16t
    .end array-data

    nop

    :array_41
    .array-data 1
        -0x8t
        0x17t
    .end array-data

    nop

    :array_42
    .array-data 1
        -0x8t
        0x18t
    .end array-data

    nop

    :array_43
    .array-data 1
        -0x8t
        0x19t
    .end array-data

    nop

    :array_44
    .array-data 1
        -0x8t
        0x1at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
