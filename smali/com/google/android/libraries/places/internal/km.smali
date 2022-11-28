.class public Lcom/google/android/libraries/places/internal/km;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/km;

.field private static volatile b:Z = false

.field private static volatile c:Lcom/google/android/libraries/places/internal/km;


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/google/android/libraries/places/internal/km;->b()Ljava/lang/Class;

    .line 20
    new-instance v0, Lcom/google/android/libraries/places/internal/km;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/km;-><init>(B)V

    sput-object v0, Lcom/google/android/libraries/places/internal/km;->a:Lcom/google/android/libraries/places/internal/km;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/km;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/km;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/km;
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/km;->c:Lcom/google/android/libraries/places/internal/km;

    if-nez v0, :cond_1

    .line 6
    const-class v1, Lcom/google/android/libraries/places/internal/km;

    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/km;->c:Lcom/google/android/libraries/places/internal/km;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/kl;->a()Lcom/google/android/libraries/places/internal/km;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/km;->c:Lcom/google/android/libraries/places/internal/km;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
