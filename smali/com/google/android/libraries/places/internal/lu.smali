.class Lcom/google/android/libraries/places/internal/lu;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/nr;

.field public final b:Lcom/google/android/libraries/places/internal/nr;

.field public final c:Lcom/google/android/libraries/places/internal/kk;

.field public final d:[B


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lu;->d:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lu;->d:[B

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kk;->a([B)Lcom/google/android/libraries/places/internal/kk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lu;->c:Lcom/google/android/libraries/places/internal/kk;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/lu;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/kc;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lu;->c:Lcom/google/android/libraries/places/internal/kk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kk;->i()V

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/kj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lu;->d:[B

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/kj;-><init>([B)V

    return-object v0
.end method

.method public b()Lcom/google/android/libraries/places/internal/kk;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lu;->c:Lcom/google/android/libraries/places/internal/kk;

    return-object v0
.end method
