.class final Lcom/google/android/libraries/places/internal/mm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/mm;


# instance fields
.field private final b:Lcom/google/android/libraries/places/internal/mq;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/mp<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/libraries/places/internal/mm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/mm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/mm;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    new-instance v0, Lcom/google/android/libraries/places/internal/lq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/lq;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/mm;->b:Lcom/google/android/libraries/places/internal/mq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/libraries/places/internal/mp<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mm;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/mp;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/mm;->b:Lcom/google/android/libraries/places/internal/mq;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/mq;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    const-string v1, "messageType"

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "schema"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kx;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/mm;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/mp;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/libraries/places/internal/mp<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object p1

    return-object p1
.end method
