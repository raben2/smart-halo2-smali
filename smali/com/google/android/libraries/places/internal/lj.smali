.class public Lcom/google/android/libraries/places/internal/lj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/kc;

.field public volatile b:Lcom/google/android/libraries/places/internal/ma;

.field public volatile c:Lcom/google/android/libraries/places/internal/kc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/google/android/libraries/places/internal/km;->a()Lcom/google/android/libraries/places/internal/km;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/places/internal/ma;)Lcom/google/android/libraries/places/internal/ma;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-nez v0, :cond_1

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-eqz v0, :cond_0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    .line 23
    sget-object v0, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;
    :try_end_1
    .catch Lcom/google/android/libraries/places/internal/ld; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    .line 27
    sget-object p1, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    .line 28
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 29
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    return-object p1
.end method

.method public final b()Lcom/google/android/libraries/places/internal/kc;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    return-object v0

    .line 32
    :cond_0
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    monitor-exit p0

    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-nez v0, :cond_2

    .line 36
    sget-object v0, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/kc;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ma;->b()Lcom/google/android/libraries/places/internal/kc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->c:Lcom/google/android/libraries/places/internal/kc;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/lj;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/lj;

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    .line 8
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/lj;->b:Lcom/google/android/libraries/places/internal/ma;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/lj;->b()Lcom/google/android/libraries/places/internal/kc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/lj;->b()Lcom/google/android/libraries/places/internal/kc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ma;->k()Lcom/google/android/libraries/places/internal/ma;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/lj;->a(Lcom/google/android/libraries/places/internal/ma;)Lcom/google/android/libraries/places/internal/ma;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_4
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/ma;->k()Lcom/google/android/libraries/places/internal/ma;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/lj;->a(Lcom/google/android/libraries/places/internal/ma;)Lcom/google/android/libraries/places/internal/ma;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
