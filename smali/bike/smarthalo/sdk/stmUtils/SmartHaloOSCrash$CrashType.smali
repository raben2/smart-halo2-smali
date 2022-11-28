.class public final enum Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;
.super Ljava/lang/Enum;
.source "SmartHaloOSCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum Crash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum CrashDataPart:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum IWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum SWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum SoftCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum StackOverflow:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

.field public static final enum WWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 105
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "IWDG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->IWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 106
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "WWDG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->WWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 107
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "SoftCrash"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SoftCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 108
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "Crash"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Crash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 109
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "SWDG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 110
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "StackOverflow"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->StackOverflow:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 111
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "CrashDataPart"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->CrashDataPart:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    .line 112
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const-string v1, "Other"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    const/16 v0, 0x8

    .line 104
    new-array v0, v0, [Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->IWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->WWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SoftCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Crash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->SWDG:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->StackOverflow:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->CrashDataPart:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    aput-object v1, v0, v9

    sput-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->$VALUES:[Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;
    .locals 1

    .line 104
    const-class v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;
    .locals 1

    .line 104
    sget-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->$VALUES:[Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    return-object v0
.end method
