.class public final enum Lbike/smarthalo/app/models/TouchInputItemType;
.super Ljava/lang/Enum;
.source "TouchInputItemType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/TouchInputItemType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lbike/smarthalo/app/models/TouchInputItemType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "NavigationStop",
        "NavigationHome",
        "NavigationWork",
        "NavigationMode",
        "ProgressToDestination",
        "LightModeCycle",
        "LightMode",
        "Light",
        "Horn",
        "Clock",
        "None",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum Clock:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum Horn:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum Light:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum LightMode:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum NavigationHome:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum NavigationMode:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum NavigationStop:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum NavigationWork:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum None:Lbike/smarthalo/app/models/TouchInputItemType;

.field public static final enum ProgressToDestination:Lbike/smarthalo/app/models/TouchInputItemType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lbike/smarthalo/app/models/TouchInputItemType;

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "NavigationStop"

    const-string v3, "navcancel"

    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationStop:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "NavigationHome"

    const-string v3, "navhome"

    const/4 v4, 0x1

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationHome:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "NavigationWork"

    const-string v3, "navwork"

    const/4 v4, 0x2

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationWork:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "NavigationMode"

    const-string v3, "navmode"

    const/4 v4, 0x3

    .line 12
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationMode:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "ProgressToDestination"

    const-string v3, "navprogress"

    const/4 v4, 0x4

    .line 13
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->ProgressToDestination:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "LightModeCycle"

    const-string v3, "lightcycle"

    const/4 v4, 0x5

    .line 14
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "LightMode"

    const-string v3, "lightmode"

    const/4 v4, 0x6

    .line 15
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->LightMode:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "Light"

    const-string v3, "light"

    const/4 v4, 0x7

    .line 16
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "Horn"

    const-string v3, "horn"

    const/16 v4, 0x8

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->Horn:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "Clock"

    const-string v3, "time"

    const/16 v4, 0x9

    .line 18
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->Clock:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/TouchInputItemType;

    const-string v2, "None"

    const-string v3, "none"

    const/16 v4, 0xa

    .line 19
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/TouchInputItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->$VALUES:[Lbike/smarthalo/app/models/TouchInputItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbike/smarthalo/app/models/TouchInputItemType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/TouchInputItemType;
    .locals 1

    const-class v0, Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/TouchInputItemType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/TouchInputItemType;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->$VALUES:[Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/TouchInputItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/TouchInputItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lbike/smarthalo/app/models/TouchInputItemType;->value:Ljava/lang/String;

    return-object v0
.end method
