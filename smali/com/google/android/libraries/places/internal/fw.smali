.class public Lcom/google/android/libraries/places/internal/fw;
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
.field public final a:Lcom/google/android/libraries/places/internal/ax;

.field public final b:Lcom/google/android/libraries/places/internal/fg;

.field public final c:Lcom/google/android/libraries/places/internal/gg;

.field public final d:Lcom/google/android/libraries/places/internal/dq;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ax;Lcom/google/android/libraries/places/internal/fg;Lcom/google/android/libraries/places/internal/gg;Lcom/google/android/libraries/places/internal/dq;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 62
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fw;->b:Lcom/google/android/libraries/places/internal/fg;

    .line 63
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fw;->c:Lcom/google/android/libraries/places/internal/gg;

    .line 64
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fw;->d:Lcom/google/android/libraries/places/internal/dq;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/az;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p0
.end method

.method public static a(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/j;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/j;-><init>(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FetchPlacePabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/az;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/af;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/az;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/s;->convert()Lcom/google/android/libraries/places/internal/az;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxWidth()Ljava/lang/Integer;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->getMaxHeight()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2334

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Must include max width or max height in request."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_1

    .line 24
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v5, "Max Width must not be < 1, but was: %d."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    .line 25
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    .line 28
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v5, "Max Height must not be < 1, but was: %d."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 29
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    new-instance v0, Lcom/google/android/libraries/places/internal/ae;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 32
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/ax;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 33
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ax;->d()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/fw;->b:Lcom/google/android/libraries/places/internal/fg;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ae;-><init>(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fw;->d:Lcom/google/android/libraries/places/internal/dq;

    new-instance v1, Lcom/google/android/libraries/places/internal/dv;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/dv;-><init>()V

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/places/internal/dq;->a(Lcom/google/android/libraries/places/internal/r;Lcom/google/android/libraries/places/internal/dv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/al;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2334

    if-eqz v0, :cond_0

    .line 39
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Place ID must not be empty."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Place Fields must not be empty."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    new-instance v6, Lcom/google/android/libraries/places/internal/ag;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 43
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->c()Ljava/util/Locale;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 44
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 45
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->d()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fw;->b:Lcom/google/android/libraries/places/internal/fg;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ag;-><init>(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V

    .line 46
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fw;->c:Lcom/google/android/libraries/places/internal/gg;

    const-class v0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FetchPlacePabloResponse;

    .line 47
    invoke-virtual {p1, v6, v0}, Lcom/google/android/libraries/places/internal/gg;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/am;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/ha;->g()Lcom/google/android/libraries/places/internal/ha;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    new-instance v6, Lcom/google/android/libraries/places/internal/ah;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 12
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->c()Ljava/util/Locale;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 13
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 14
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->d()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fw;->b:Lcom/google/android/libraries/places/internal/fg;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ah;-><init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fw;->c:Lcom/google/android/libraries/places/internal/gg;

    const-class v0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindAutocompletePredictionsPabloResponse;

    .line 16
    invoke-virtual {p1, v6, v0}, Lcom/google/android/libraries/places/internal/gg;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/ak;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/ha;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Landroid/location/Location;",
            "Lcom/google/android/libraries/places/internal/ha<",
            "Lcom/google/android/libraries/places/internal/fu;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0x2334

    const-string v0, "Place Fields must not be empty."

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance v8, Lcom/google/android/libraries/places/internal/ai;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 53
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->c()Ljava/util/Locale;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 54
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fw;->a:Lcom/google/android/libraries/places/internal/ax;

    .line 55
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ax;->d()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/fw;->b:Lcom/google/android/libraries/places/internal/fg;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/ai;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/ha;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/fg;)V

    .line 56
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fw;->c:Lcom/google/android/libraries/places/internal/gg;

    const-class p2, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/FindCurrentPlacePabloResponse;

    .line 57
    invoke-virtual {p1, v8, p2}, Lcom/google/android/libraries/places/internal/gg;->a(Lcom/google/android/libraries/places/internal/r;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/libraries/places/internal/an;->a:Lcom/google/android/gms/tasks/Continuation;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
