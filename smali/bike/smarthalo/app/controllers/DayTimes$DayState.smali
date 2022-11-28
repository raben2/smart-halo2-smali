.class public final enum Lbike/smarthalo/app/controllers/DayTimes$DayState;
.super Ljava/lang/Enum;
.source "DayTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/DayTimes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/controllers/DayTimes$DayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public static final enum AfterDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public static final enum AfterMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public static final enum BeforeDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public static final enum BeforeMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

.field public static final enum MaxDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const-string v1, "BeforeDayLight"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/controllers/DayTimes$DayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    .line 43
    new-instance v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const-string v1, "BeforeMaxDayLightDuringDayLight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/controllers/DayTimes$DayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    .line 44
    new-instance v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const-string v1, "MaxDayLight"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/controllers/DayTimes$DayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->MaxDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    .line 45
    new-instance v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const-string v1, "AfterMaxDayLightDuringDayLight"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/controllers/DayTimes$DayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    .line 46
    new-instance v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const-string v1, "AfterDayLight"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/controllers/DayTimes$DayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    const/4 v0, 0x5

    .line 41
    new-array v0, v0, [Lbike/smarthalo/app/controllers/DayTimes$DayState;

    sget-object v1, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/controllers/DayTimes$DayState;->BeforeMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/controllers/DayTimes$DayState;->MaxDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterMaxDayLightDuringDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/controllers/DayTimes$DayState;->AfterDayLight:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->$VALUES:[Lbike/smarthalo/app/controllers/DayTimes$DayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/controllers/DayTimes$DayState;
    .locals 1

    .line 41
    const-class v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/controllers/DayTimes$DayState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/controllers/DayTimes$DayState;
    .locals 1

    .line 41
    sget-object v0, Lbike/smarthalo/app/controllers/DayTimes$DayState;->$VALUES:[Lbike/smarthalo/app/controllers/DayTimes$DayState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/controllers/DayTimes$DayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/controllers/DayTimes$DayState;

    return-object v0
.end method
