.class public Lcom/instabug/library/util/InstabugThemeResolver;
.super Ljava/lang/Object;
.source "InstabugThemeResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveTheme(Lcom/instabug/library/InstabugColorTheme;)I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p0, v0, :cond_0

    .line 2
    sget p0, Lcom/instabug/library/R$style;->InstabugSdkTheme_Light:I

    return p0

    .line 4
    :cond_0
    sget p0, Lcom/instabug/library/R$style;->InstabugSdkTheme_Dark:I

    return p0
.end method
