.class public final enum Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
.super Ljava/lang/Enum;
.source "TouchInputCombo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "OneShort",
        "TwoShort",
        "ThreeShort",
        "FourShort",
        "OneLong",
        "TwoLong",
        "ThreeLong",
        "FourLong",
        "None",
        "Companion",
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
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final Companion:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;

.field public static final enum FourLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum FourShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum None:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum OneLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum OneShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum ThreeLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum ThreeShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum TwoLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

.field public static final enum TwoShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "OneShort"

    const-string v3, "1S"

    const/4 v4, 0x0

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->OneShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "TwoShort"

    const-string v3, "2S"

    const/4 v4, 0x1

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->TwoShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "ThreeShort"

    const-string v3, "3S"

    const/4 v4, 0x2

    .line 12
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->ThreeShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "FourShort"

    const-string v3, "4S"

    const/4 v4, 0x3

    .line 13
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->FourShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "OneLong"

    const-string v3, "1L"

    const/4 v4, 0x4

    .line 14
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->OneLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "TwoLong"

    const-string v3, "2L"

    const/4 v4, 0x5

    .line 15
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->TwoLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "ThreeLong"

    const-string v3, "3L"

    const/4 v4, 0x6

    .line 16
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->ThreeLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "FourLong"

    const-string v3, "4L"

    const/4 v4, 0x7

    .line 17
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->FourLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    const-string v2, "None"

    const-string v3, ""

    const/16 v4, 0x8

    .line 18
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->None:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->$VALUES:[Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    new-instance v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->Companion:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->value:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->Companion:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;

    invoke-virtual {v0, p0}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;->fromString(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
    .locals 1

    const-class v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->$VALUES:[Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    invoke-virtual {v0}, [Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->value:Ljava/lang/String;

    return-object v0
.end method
