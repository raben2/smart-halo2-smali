.class Lio/realm/RealmCache$RefAndCount;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefAndCount"
.end annotation


# instance fields
.field private globalCount:I

.field private final localCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final localRealm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/BaseRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmCache$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lio/realm/RealmCache$RefAndCount;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 68
    iget-object p0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 68
    iget-object p0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic access$800(Lio/realm/RealmCache$RefAndCount;)I
    .locals 0

    .line 68
    iget p0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return p0
.end method

.method static synthetic access$808(Lio/realm/RealmCache$RefAndCount;)I
    .locals 2

    .line 68
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$810(Lio/realm/RealmCache$RefAndCount;)I
    .locals 2

    .line 68
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method
