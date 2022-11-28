.class public Lcom/instabug/survey/e/b;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public static a(Landroid/app/Activity;Lcom/instabug/survey/ui/f;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/instabug/library/util/DisplayUtils;->getDisplayHeightInPx(Landroid/app/Activity;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/instabug/survey/e/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 5
    invoke-static {p0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 v0, v0, 0x28

    .line 7
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2d

    .line 9
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    mul-int/lit8 v0, v0, 0x19

    .line 13
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x26

    .line 15
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {p0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    mul-int/lit8 v0, v0, 0x50

    .line 36
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 37
    :cond_4
    invoke-static {p0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    mul-int/lit8 v0, v0, 0x5f

    .line 38
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x58

    .line 40
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 41
    :cond_6
    invoke-static {p0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 42
    invoke-static {p0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_7

    mul-int/lit8 v0, v0, 0x3c

    .line 43
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_7
    mul-int/lit8 v0, v0, 0x2d

    .line 45
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 48
    :cond_8
    invoke-static {p0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    mul-int/lit8 v0, v0, 0x4b

    .line 49
    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_9
    mul-int/lit8 v0, v0, 0x34

    .line 51
    div-int/lit8 v0, v0, 0x64

    :goto_0
    return v0
.end method
