.class public Lcom/google/android/libraries/places/internal/gb;
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
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/libraries/places/internal/aw;

.field public c:Lcom/google/android/libraries/places/internal/dw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/gb;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1

    .line 7
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public static declared-synchronized a(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/fz;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/libraries/places/internal/gb;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/fz;->c()Lcom/google/android/libraries/places/internal/ga;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/libraries/places/internal/ga;->a(Landroidx/appcompat/app/AppCompatActivity;)Lcom/google/android/libraries/places/internal/ga;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ga;->a(Landroid/os/Bundle;)Lcom/google/android/libraries/places/internal/ga;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ga;->a()Lcom/google/android/libraries/places/internal/fz;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/fx;
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gb;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gb;->b:Lcom/google/android/libraries/places/internal/aw;

    const-class v1, Lcom/google/android/libraries/places/internal/aw;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/gb;->c:Lcom/google/android/libraries/places/internal/dw;

    const-class v1, Lcom/google/android/libraries/places/internal/dw;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/fx;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/gb;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/gb;->b:Lcom/google/android/libraries/places/internal/aw;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/gb;->c:Lcom/google/android/libraries/places/internal/dw;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/fx;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/aw;Lcom/google/android/libraries/places/internal/dw;B)V

    return-object v0
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/aw;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gb;->b(Lcom/google/android/libraries/places/internal/aw;)Lcom/google/android/libraries/places/internal/gb;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gb;->b(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/gb;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/gb;->c(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/gb;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/android/libraries/places/internal/aw;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/lt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/aw;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gb;->b:Lcom/google/android/libraries/places/internal/aw;

    return-object p0
.end method

.method public b(Lcom/google/android/libraries/places/internal/dw;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/lt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/dw;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gb;->c:Lcom/google/android/libraries/places/internal/dw;

    return-object p0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/gb;
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/lt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/gb;->a:Landroid/content/Context;

    return-object p0
.end method
