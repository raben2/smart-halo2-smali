.class public Lcom/google/android/libraries/places/internal/fx;
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
.field public final a:Lcom/google/android/libraries/places/internal/aw;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/libraries/places/internal/dw;

.field public d:Lcom/google/android/libraries/places/internal/ny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ny<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/google/android/libraries/places/internal/ny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ny<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/aw;Lcom/google/android/libraries/places/internal/dw;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fx;->a:Lcom/google/android/libraries/places/internal/aw;

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fx;->b:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fx;->c:Lcom/google/android/libraries/places/internal/dw;

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fx;->b(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/aw;Lcom/google/android/libraries/places/internal/dw;B)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/fx;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/aw;Lcom/google/android/libraries/places/internal/dw;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/fw;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestManager;

    return-object p0
.end method

.method public static c()Lcom/google/android/libraries/places/internal/gb;
    .locals 2

    .line 12
    new-instance v0, Lcom/google/android/libraries/places/internal/gb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/gb;-><init>(B)V

    return-object v0
.end method

.method public static k()Lcom/google/android/libraries/places/internal/fv;
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/fv;

    new-instance v1, Lcom/google/android/libraries/places/internal/ft;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/ft;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/fv;-><init>(Lcom/google/android/libraries/places/internal/ft;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->q()Lcom/google/android/libraries/places/internal/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/libraries/places/internal/nw;

    const-string v1, "instance cannot be null"

    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/lt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/nw;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->d:Lcom/google/android/libraries/places/internal/ny;

    .line 48
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fx;->d:Lcom/google/android/libraries/places/internal/ny;

    .line 50
    new-instance v0, Lcom/google/android/libraries/places/internal/av;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/av;-><init>(Lcom/google/android/libraries/places/internal/ny;)V

    .line 51
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/nv;->a(Lcom/google/android/libraries/places/internal/ny;)Lcom/google/android/libraries/places/internal/ny;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fx;->e:Lcom/google/android/libraries/places/internal/ny;

    return-void
.end method

.method public d()Lcom/google/android/libraries/places/internal/fg;
    .locals 2

    .line 13
    new-instance v0, Lcom/google/android/libraries/places/internal/fg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fx;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/fg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->e:Lcom/google/android/libraries/places/internal/ny;

    .line 15
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ny;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/gb;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/android/libraries/places/internal/gg;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->e()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/dr;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/dr;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/dq;->a(Lcom/android/volley/RequestQueue;Lcom/google/android/libraries/places/internal/dr;)Lcom/google/android/libraries/places/internal/gg;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->e:Lcom/google/android/libraries/places/internal/ny;

    .line 19
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ny;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fx;->a(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/libraries/places/internal/dq;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->g()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dr;->a(Lcom/bumptech/glide/RequestManager;)Lcom/google/android/libraries/places/internal/dq;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/libraries/places/internal/fw;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->a:Lcom/google/android/libraries/places/internal/aw;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->d()Lcom/google/android/libraries/places/internal/fg;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->f()Lcom/google/android/libraries/places/internal/gg;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->h()Lcom/google/android/libraries/places/internal/dq;

    move-result-object v3

    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ft;->a(Lcom/google/android/libraries/places/internal/ax;Lcom/google/android/libraries/places/internal/fg;Lcom/google/android/libraries/places/internal/gg;Lcom/google/android/libraries/places/internal/dq;)Lcom/google/android/libraries/places/internal/fw;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->e:Lcom/google/android/libraries/places/internal/ny;

    .line 26
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ny;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fv;->a(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/libraries/places/internal/d;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->j()Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/fx;->k()Lcom/google/android/libraries/places/internal/fv;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fu;->a(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/fv;)Lcom/google/android/libraries/places/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->e:Lcom/google/android/libraries/places/internal/ny;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/ny;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fu;->b(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/android/libraries/places/internal/j;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->m()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/fw;->a(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/android/gms/clearcut/ClearcutLogger;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fx;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ds;->a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/google/android/libraries/places/internal/ds;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->o()Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fx;->c:Lcom/google/android/libraries/places/internal/dw;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/fx;->a:Lcom/google/android/libraries/places/internal/aw;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/gg;->a(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dw;Lcom/google/android/libraries/places/internal/dz;)Lcom/google/android/libraries/places/internal/ds;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/android/libraries/places/internal/u;
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->i()Lcom/google/android/libraries/places/internal/fw;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->l()Lcom/google/android/libraries/places/internal/d;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->n()Lcom/google/android/libraries/places/internal/j;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fx;->p()Lcom/google/android/libraries/places/internal/ds;

    move-result-object v3

    .line 43
    invoke-static {}, Lcom/google/android/libraries/places/internal/b;->a()Lcom/google/android/libraries/places/internal/a;

    move-result-object v4

    .line 44
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/dv;->a(Lcom/google/android/libraries/places/internal/fw;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/ds;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/u;

    move-result-object v0

    return-object v0
.end method
