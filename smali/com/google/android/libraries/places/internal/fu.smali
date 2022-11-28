.class public Lcom/google/android/libraries/places/internal/fu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/ny;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/google/android/libraries/places/internal/i;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1    # Landroid/net/wifi/WifiInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    iget-object v2, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iget v4, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v5, p2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/fu;-><init>(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1    # Landroid/net/wifi/WifiInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 24
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/fu;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/i;

    move-result-object v3

    .line 25
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/fu;->a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v5, p5

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/fu;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/i;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/i;ZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fu;->a:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/google/android/libraries/places/internal/fu;->b:I

    .line 31
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fu;->c:Lcom/google/android/libraries/places/internal/i;

    .line 32
    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/fu;->d:Z

    .line 33
    iput p5, p0, Lcom/google/android/libraries/places/internal/fu;->e:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 5
    :try_start_0
    sget v2, Lcom/google/android/libraries/places/R$id;->places_autocomplete_action_bar:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const-string p0, "ColorUtil"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ColorUtil"

    const-string v1, "Failed to get action bar; couldn\'t get view."

    .line 13
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "ColorUtil"

    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ColorUtil"

    const-string v2, "Failed to get action bar; View is wrong class."

    .line 9
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/android/libraries/places/internal/a;
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/c;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/c;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/fv;)Lcom/google/android/libraries/places/internal/d;
    .locals 1

    .line 19
    new-instance v0, Lcom/google/android/libraries/places/internal/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/d;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/fv;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/i;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object p0, Lcom/google/android/libraries/places/internal/i;->d:Lcom/google/android/libraries/places/internal/i;

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ESS]"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "[IBSS]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ".*WPA[0-9]*-PSK.*"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    sget-object p0, Lcom/google/android/libraries/places/internal/i;->b:Lcom/google/android/libraries/places/internal/i;

    return-object p0

    :cond_2
    const-string v0, ".*WPA[0-9]*-EAP.*"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 43
    sget-object p0, Lcom/google/android/libraries/places/internal/i;->c:Lcom/google/android/libraries/places/internal/i;

    return-object p0

    .line 44
    :cond_3
    sget-object p0, Lcom/google/android/libraries/places/internal/i;->d:Lcom/google/android/libraries/places/internal/i;

    return-object p0

    .line 39
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/libraries/places/internal/i;->a:Lcom/google/android/libraries/places/internal/i;

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public static a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/net/wifi/WifiInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "wifi"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/android/libraries/places/internal/fu;->b:I

    return v0
.end method

.method public e()Lcom/google/android/libraries/places/internal/i;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fu;->c:Lcom/google/android/libraries/places/internal/i;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/fu;->d:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/android/libraries/places/internal/fu;->e:I

    return v0
.end method
