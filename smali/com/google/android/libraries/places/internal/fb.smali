.class final synthetic Lcom/google/android/libraries/places/internal/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/fa;

.field private final b:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fa;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->a:Lcom/google/android/libraries/places/internal/fa;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fb;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fb;->a:Lcom/google/android/libraries/places/internal/fa;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fb;->b:Ljava/lang/CharSequence;

    .line 2
    :try_start_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ex;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    new-instance v3, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->builder()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 11
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/fh;->b()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 14
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/fh;->c()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 17
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/fh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 20
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->b:Lcom/google/android/libraries/places/internal/fh;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/fh;->e()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setTypeFilter(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 23
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->h:Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setSessionToken(Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->c:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fa;->a:Lcom/google/android/libraries/places/internal/ex;

    .line 28
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 30
    invoke-interface {v2, v1}, Lcom/google/android/libraries/places/api/net/PlacesClient;->findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/fc;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/fc;-><init>(Lcom/google/android/libraries/places/internal/fa;)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/fd;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/fd;-><init>(Lcom/google/android/libraries/places/internal/fa;)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 35
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method
