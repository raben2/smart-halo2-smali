.class public final Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;
.super Ljava/lang/Object;
.source "TouchInputCombo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchInputCombo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchInputCombo.kt\nbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion\n*L\n1#1,36:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;",
        "",
        "()V",
        "fromString",
        "Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;",
        "stringValue",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;)Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "stringValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x53

    if-eq v0, v1, :cond_6

    const/16 v1, 0x980

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa60

    if-eq v0, v1, :cond_4

    const v1, 0x126cc

    if-eq v0, v1, :cond_3

    const v1, 0x141f3

    if-eq v0, v1, :cond_2

    const v1, 0x23b300

    if-eq v0, v1, :cond_1

    const v1, 0x26fcc0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SSSS"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->FourShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_1
    const-string v0, "LLLL"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->FourLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_2
    const-string v0, "SSS"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->ThreeShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_3
    const-string v0, "LLL"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->ThreeLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_4
    const-string v0, "SS"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->TwoShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_5
    const-string v0, "LL"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->TwoLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_6
    const-string v0, "S"

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->OneShort:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    :cond_7
    const-string v0, "L"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->OneLong:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    goto :goto_1

    .line 32
    :cond_8
    :goto_0
    sget-object p1, Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;->None:Lbike/smarthalo/app/analytics/assistant/TouchInputCombo;

    :goto_1
    return-object p1
.end method
