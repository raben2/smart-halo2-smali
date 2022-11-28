.class public final enum Lbike/smarthalo/app/analytics/light/LightConfigType;
.super Ljava/lang/Enum;
.source "LightConfigType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/analytics/light/LightConfigType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/light/LightConfigType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "Mode",
        "Brightness",
        "Setting",
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
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/analytics/light/LightConfigType;

.field public static final enum Brightness:Lbike/smarthalo/app/analytics/light/LightConfigType;

.field public static final enum Mode:Lbike/smarthalo/app/analytics/light/LightConfigType;

.field public static final enum Setting:Lbike/smarthalo/app/analytics/light/LightConfigType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lbike/smarthalo/app/analytics/light/LightConfigType;

    new-instance v1, Lbike/smarthalo/app/analytics/light/LightConfigType;

    const-string v2, "Mode"

    const-string v3, "mode"

    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/light/LightConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/light/LightConfigType;->Mode:Lbike/smarthalo/app/analytics/light/LightConfigType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/light/LightConfigType;

    const-string v2, "Brightness"

    const-string v3, "brightness"

    const/4 v4, 0x1

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/light/LightConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/light/LightConfigType;->Brightness:Lbike/smarthalo/app/analytics/light/LightConfigType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/light/LightConfigType;

    const-string v2, "Setting"

    const-string v3, "setting"

    const/4 v4, 0x2

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/light/LightConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/light/LightConfigType;->Setting:Lbike/smarthalo/app/analytics/light/LightConfigType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/analytics/light/LightConfigType;->$VALUES:[Lbike/smarthalo/app/analytics/light/LightConfigType;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbike/smarthalo/app/analytics/light/LightConfigType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/analytics/light/LightConfigType;
    .locals 1

    const-class v0, Lbike/smarthalo/app/analytics/light/LightConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/analytics/light/LightConfigType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/analytics/light/LightConfigType;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightConfigType;->$VALUES:[Lbike/smarthalo/app/analytics/light/LightConfigType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/analytics/light/LightConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/analytics/light/LightConfigType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    iget-object v0, p0, Lbike/smarthalo/app/analytics/light/LightConfigType;->value:Ljava/lang/String;

    return-object v0
.end method
