.class synthetic Lbike/smarthalo/app/navigation/SHDirectionService$7;
.super Ljava/lang/Object;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

.field static final synthetic $SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

.field static final synthetic $SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

.field static final synthetic $SwitchMap$bike$smarthalo$navigation$models$TransportationMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 806
    invoke-static {}, Lbike/smarthalo/navigation/models/TransportationMode;->values()[Lbike/smarthalo/navigation/models/TransportationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$TransportationMode:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$TransportationMode:[I

    sget-object v2, Lbike/smarthalo/navigation/models/TransportationMode;->CAUTION:Lbike/smarthalo/navigation/models/TransportationMode;

    invoke-virtual {v2}, Lbike/smarthalo/navigation/models/TransportationMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :catch_0
    invoke-static {}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->values()[Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    :try_start_1
    sget-object v1, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    sget-object v2, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v2}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x2

    :try_start_2
    sget-object v2, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    sget-object v3, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->PROGRESS:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x3

    :try_start_3
    sget-object v3, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    sget-object v4, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->TURN_NOW:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v4}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x4

    :try_start_4
    sget-object v4, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    sget-object v5, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v5}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v4, 0x5

    :try_start_5
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->RETURN_TO_PATH:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 427
    :catch_5
    invoke-static {}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->values()[Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    :try_start_6
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->POINTER:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ANGLE:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERING_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ENTERED_ROUNDABOUT:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->DESTINATION:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    sget-object v6, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->U_TURN:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 217
    :catch_b
    invoke-static {}, Lbike/smarthalo/navigation/models/NavigationMode;->values()[Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    :try_start_c
    sget-object v5, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    sget-object v6, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v6}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    sget-object v5, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v5}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesMagnetometer:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowTurns:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
