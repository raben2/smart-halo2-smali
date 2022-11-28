.class final Lcom/google/android/libraries/places/internal/mv;
.super Lcom/google/android/libraries/places/internal/nb;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/nb;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ms;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ms;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/mv;->a:Lcom/google/android/libraries/places/internal/ms;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/nb;-><init>(Lcom/google/android/libraries/places/internal/ms;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/mu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/mv;->a:Lcom/google/android/libraries/places/internal/ms;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/mu;-><init>(Lcom/google/android/libraries/places/internal/ms;)V

    return-object v0
.end method
