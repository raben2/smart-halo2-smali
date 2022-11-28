.class public final Lbike/smarthalo/app/analytics/light/AnalyticsLight;
.super Ljava/lang/Object;
.source "AnalyticsLight.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/analytics/light/AnalyticsLight;",
        "",
        "()V",
        "LIGHT_CONFIG_CHANGED",
        "",
        "LIGHT_CONFIG_TYPE",
        "LIGHT_CONFIG_TYPE_BRIGHTNESS",
        "LIGHT_CONFIG_TYPE_MODE",
        "LIGHT_CONFIG_TYPE_SETTING",
        "LIGHT_ILLUMINATED",
        "LIGHT_ILLUMINATED_SOURCE",
        "LIGHT_ILLUMINATED_SOURCE_AUTO",
        "LIGHT_ILLUMINATED_SOURCE_MANUAL",
        "getLightConfigChangedEvent",
        "Lbike/smarthalo/app/analytics/AnalyticsEvent;",
        "lightConfigType",
        "Lbike/smarthalo/app/analytics/light/LightConfigType;",
        "getLightIlluminatedEvent",
        "illuminationSource",
        "Lbike/smarthalo/app/analytics/light/LightIlluminationSource;",
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
.field public static final INSTANCE:Lbike/smarthalo/app/analytics/light/AnalyticsLight;

.field public static final LIGHT_CONFIG_CHANGED:Ljava/lang/String; = "LightConfig_Changed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_CONFIG_TYPE:Ljava/lang/String; = "LightConfigType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_CONFIG_TYPE_BRIGHTNESS:Ljava/lang/String; = "brightness"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_CONFIG_TYPE_MODE:Ljava/lang/String; = "mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_CONFIG_TYPE_SETTING:Ljava/lang/String; = "setting"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_ILLUMINATED:Ljava/lang/String; = "Light_Illuminated"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_ILLUMINATED_SOURCE:Ljava/lang/String; = "IlluminationSource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_ILLUMINATED_SOURCE_AUTO:Ljava/lang/String; = "auto"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIGHT_ILLUMINATED_SOURCE_MANUAL:Ljava/lang/String; = "manual"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lbike/smarthalo/app/analytics/light/AnalyticsLight;

    invoke-direct {v0}, Lbike/smarthalo/app/analytics/light/AnalyticsLight;-><init>()V

    sput-object v0, Lbike/smarthalo/app/analytics/light/AnalyticsLight;->INSTANCE:Lbike/smarthalo/app/analytics/light/AnalyticsLight;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLightConfigChangedEvent(Lbike/smarthalo/app/analytics/light/LightConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p0    # Lbike/smarthalo/app/analytics/light/LightConfigType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lightConfigType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LightConfigType"

    .line 32
    invoke-virtual {p0}, Lbike/smarthalo/app/analytics/light/LightConfigType;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "LightConfig_Changed"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static final getLightIlluminatedEvent(Lbike/smarthalo/app/analytics/light/LightIlluminationSource;)Lbike/smarthalo/app/analytics/AnalyticsEvent;
    .locals 2
    .param p0    # Lbike/smarthalo/app/analytics/light/LightIlluminationSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "illuminationSource"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IlluminationSource"

    .line 25
    invoke-virtual {p0}, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p0, Lbike/smarthalo/app/analytics/AnalyticsEvent;

    const-string v1, "Light_Illuminated"

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
