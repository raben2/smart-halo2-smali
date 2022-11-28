.class public Lcom/instabug/featuresrequest/g/c;
.super Ljava/lang/Object;
.source "FeatureRequestThemeResolver.java"


# direct methods
.method public static a(Lcom/instabug/library/InstabugColorTheme;)I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p0, v0, :cond_0

    .line 2
    sget p0, Lcom/instabug/featuresrequest/R$style;->IbFrLight:I

    return p0

    .line 4
    :cond_0
    sget p0, Lcom/instabug/featuresrequest/R$style;->IbFrDark:I

    return p0
.end method
