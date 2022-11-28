.class public final synthetic Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;

    invoke-direct {v0}, Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;-><init>()V

    sput-object v0, Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;->INSTANCE:Lio/sentry/cache/-$$Lambda$CacheStrategy$vtbFyy0YlpKkCL4ESa4Q9QK9zEw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lio/sentry/cache/CacheStrategy;->lambda$sortFilesOldestToNewest$0(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
