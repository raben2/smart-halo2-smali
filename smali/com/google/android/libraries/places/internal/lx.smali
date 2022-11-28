.class final Lcom/google/android/libraries/places/internal/lx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/lw;

.field public static final b:Lcom/google/android/libraries/places/internal/lw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/libraries/places/internal/lx;->a()Lcom/google/android/libraries/places/internal/lw;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/lx;->a:Lcom/google/android/libraries/places/internal/lw;

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/lw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/lw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/lx;->b:Lcom/google/android/libraries/places/internal/lw;

    return-void
.end method

.method private static a()Lcom/google/android/libraries/places/internal/lw;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/lw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
