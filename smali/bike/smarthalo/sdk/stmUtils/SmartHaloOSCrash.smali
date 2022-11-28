.class public Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;
.super Ljava/lang/Object;
.source "SmartHaloOSCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;
    }
.end annotation


# static fields
.field public static final CRASH_DATA_PART_1:Ljava/lang/String; = "eCRASHD0"

.field public static final CRASH_DATA_PART_2:Ljava/lang/String; = "eCRASHD1"

.field public static final CRASH_DATA_PART_3:Ljava/lang/String; = "eCRASHD2"

.field public static final CRASH_DATA_PART_4:Ljava/lang/String; = "eCRASHD3"

.field private static final CRASH_ID_INDEX:I = 0x4

.field private static final CRASH_LOG_MIN_SIZE:I = 0x5

.field private static final CRASH_SEQUENCE_NUMBER_INDEX:I = 0x1

.field private static final CRASH_TIMESTAMP_INDEX:I = 0x0

.field public static final CRASH_TYPE:Ljava/lang/String; = "eCRASH"

.field private static final CRASH_TYPE_INDEX:I = 0x3

.field public static final IWDG_TYPE:Ljava/lang/String; = "eIWDG"

.field public static final SOFT_CRASH_TYPE:Ljava/lang/String; = "eSOFTCRASH"

.field public static final STACKOVF_TYPE:Ljava/lang/String; = "eSTACKOVF"

.field public static final SWDG_TYPE:Ljava/lang/String; = "eSOFTWD"

.field public static final WWDG_TYPE:Ljava/lang/String; = "eWWDG"


# instance fields
.field public crashData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public id:Ljava/lang/String;

.field public sequenceNumber:I

.field public timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashData:Ljava/util/List;

    return-void
.end method

.method public static build(Ljava/lang/String;)Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;
    .locals 5

    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\|"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 47
    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    .line 48
    aget-object v1, p0, v0

    invoke-static {v1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->fromString(Ljava/lang/String;)Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    move-result-object v1

    .line 51
    sget-object v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    if-eq v1, v2, :cond_1

    .line 52
    new-instance v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    invoke-direct {v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;-><init>()V

    .line 53
    iput-object v1, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const/4 v1, 0x4

    .line 54
    aget-object v1, p0, v1

    iput-object v1, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->id:Ljava/lang/String;

    const/4 v1, 0x1

    .line 57
    :try_start_0
    aget-object v3, p0, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->sequenceNumber:I

    const/4 v3, 0x0

    .line 59
    aget-object p0, p0, v3

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 60
    array-length v4, p0

    if-ne v4, v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, 0xb

    .line 62
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 63
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v3, 0x2

    .line 64
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->timestamp:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    .line 68
    iput p0, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->sequenceNumber:I

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->timestamp:J

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;
    .locals 1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "eSOFTWD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "eCRASHD3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_2
    const-string v0, "eCRASHD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "eCRASHD1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "eCRASHD0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "eWWDG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "eIWDG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "eSTACKOVF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_8
    const-string v0, "eCRASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v0, "eSOFTCRASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 100
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 98
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->CrashDataPart:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 93
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->StackOverflow:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 91
    :pswitch_2
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Crash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 89
    :pswitch_3
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 87
    :pswitch_4
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->WWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 85
    :pswitch_5
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SoftCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    .line 83
    :pswitch_6
    sget-object p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->IWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7437d528 -> :sswitch_9
        -0x4fd01dbe -> :sswitch_8
        -0x4b4c4c4 -> :sswitch_7
        0x5b1c416 -> :sswitch_6
        0x5b82148 -> :sswitch_5
        0x63c0622e -> :sswitch_4
        0x63c0622f -> :sswitch_3
        0x63c06230 -> :sswitch_2
        0x63c06231 -> :sswitch_1
        0x70f1f51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 4

    .line 116
    sget-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$1;->$SwitchMap$bike$smarthalo$sdk$stmUtils$SmartHaloOSCrash$CrashType:[I

    iget-object v1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    .line 119
    :pswitch_1
    iget-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
