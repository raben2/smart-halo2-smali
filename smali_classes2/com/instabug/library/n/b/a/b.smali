.class public Lcom/instabug/library/n/b/a/b;
.super Lcom/instabug/library/n/b/a/f;
.source "ConnectivityState.java"


# instance fields
.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/n/b/a/f;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "connectivity"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private static a(Landroid/net/ConnectivityManager;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/instabug/library/n/b/a/b;)Lcom/instabug/library/n/b/a/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/n/b/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "WiFi"

    .line 6
    invoke-virtual {p2, p1}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/instabug/library/util/DeviceStateProvider;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/instabug/library/n/b/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {p0}, Lcom/instabug/library/util/DeviceStateProvider;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/instabug/library/n/b/a/b;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "no_connection"

    .line 14
    invoke-virtual {p2, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static a(Landroid/net/NetworkCapabilities;Lcom/instabug/library/n/b/a/b;)Lcom/instabug/library/n/b/a/b;
    .locals 1
    .param p0    # Landroid/net/NetworkCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/n/b/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "no_connection"

    .line 15
    invoke-virtual {p1, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Cellular"

    .line 20
    invoke-virtual {p1, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "WiFi"

    .line 22
    invoke-virtual {p1, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "no_connection"

    .line 24
    invoke-virtual {p1, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/instabug/library/n/b/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/instabug/library/n/b/a/b;

    invoke-direct {v0}, Lcom/instabug/library/n/b/a/b;-><init>()V

    const-string v1, "t"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/n/b/a/f;->a(D)V

    const-string v1, "v"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    const-string v1, "name"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/instabug/library/n/b/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static a(Lorg/json/JSONArray;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/n/b/a/b;->a(Lorg/json/JSONObject;)Lcom/instabug/library/n/b/a/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/instabug/library/n/b/a/b;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/instabug/library/n/b/a/b;

    invoke-direct {v0}, Lcom/instabug/library/n/b/a/b;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "no_connection"

    .line 5
    invoke-virtual {v0, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/n/b/a/b;->a(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 13
    invoke-static {v1}, Lcom/instabug/library/n/b/a/b;->a(Landroid/net/ConnectivityManager;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    .line 14
    invoke-static {p0, v0}, Lcom/instabug/library/n/b/a/b;->a(Landroid/net/NetworkCapabilities;Lcom/instabug/library/n/b/a/b;)Lcom/instabug/library/n/b/a/b;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    invoke-static {p0, v1, v0}, Lcom/instabug/library/n/b/a/b;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/instabug/library/n/b/a/b;)Lcom/instabug/library/n/b/a/b;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "no_connection"

    .line 19
    invoke-virtual {v0, p0}, Lcom/instabug/library/n/b/a/b;->b(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/instabug/library/n/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instabug/library/n/b/a/f;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/instabug/library/n/b/a/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/n/b/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/n/b/a/b;->b:Ljava/lang/String;

    return-void
.end method
