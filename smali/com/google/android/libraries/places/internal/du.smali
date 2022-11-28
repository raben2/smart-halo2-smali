.class final Lcom/google/android/libraries/places/internal/du;
.super Lcom/google/android/libraries/places/internal/dw$a;
.source "PG"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/google/android/libraries/places/internal/dw$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/dw$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/android/libraries/places/internal/dw$a;
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/du;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/places/internal/dw$b;)Lcom/google/android/libraries/places/internal/dw$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/du;->c:Lcom/google/android/libraries/places/internal/dw$b;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null requestSource"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/dw$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/du;->a:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null packageName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a()Lcom/google/android/libraries/places/internal/dw;
    .locals 4

    const-string v0, ""

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/du;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/du;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/du;->c:Lcom/google/android/libraries/places/internal/dw$b;

    if-nez v1, :cond_2

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " requestSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_4
    new-instance v0, Lcom/google/android/libraries/places/internal/dt;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/du;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/du;->b:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/du;->c:Lcom/google/android/libraries/places/internal/dw$b;

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/dt;-><init>(Ljava/lang/String;ILcom/google/android/libraries/places/internal/dw$b;)V

    return-object v0
.end method
