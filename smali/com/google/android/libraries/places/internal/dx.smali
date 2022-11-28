.class public final Lcom/google/android/libraries/places/internal/dx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Landroid/os/DropBoxManager;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "CrashReporter.class"
    .end annotation
.end field

.field private static final b:Ljava/util/LinkedHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "CrashReporter.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/google/android/libraries/places/internal/dy;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/dy;-><init>(IFZ)V

    sput-object v0, Lcom/google/android/libraries/places/internal/dx;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 7

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/gk;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/gk;-><init>(C)V

    .line 30
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/google/android/libraries/places/internal/gq;

    new-instance v2, Lcom/google/android/libraries/places/internal/gs;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/places/internal/gs;-><init>(Lcom/google/android/libraries/places/internal/gj;)V

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/gq;-><init>(Lcom/google/android/libraries/places/internal/gs;)V

    .line 33
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/go;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/gq;->c:Lcom/google/android/libraries/places/internal/gs;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/places/internal/gs;->a(Lcom/google/android/libraries/places/internal/gq;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_1

    return-wide v2

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 46
    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    const-wide/16 v5, 0x64

    mul-long v0, v0, v5

    .line 47
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v5

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/libraries/places/internal/dx;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/libraries/places/internal/dx;->a:Landroid/os/DropBoxManager;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "dropbox"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    sput-object p0, Lcom/google/android/libraries/places/internal/dx;->a:Landroid/os/DropBoxManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 14

    const-class v0, Lcom/google/android/libraries/places/internal/dx;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 8
    sget-object v4, Lcom/google/android/libraries/places/internal/dx;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v3, :cond_0

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    :try_start_1
    sget-object v4, Lcom/google/android/libraries/places/internal/dx;->a:Landroid/os/DropBoxManager;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/libraries/places/internal/dx;->a:Landroid/os/DropBoxManager;

    const-string v5, "system_app_crash"

    invoke-virtual {v4, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    sget-object v4, Lcom/google/android/libraries/places/internal/dx;->a:Landroid/os/DropBoxManager;

    const-string v5, "system_app_crash"

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1.1.0"

    const-string v8, "Package: %s v%d (%s)\n"

    const/4 v9, 0x3

    .line 15
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "com.google.android.libraries.places"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 16
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/dx;->a(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    const/4 v10, 0x2

    aput-object v7, v9, v10

    .line 17
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Build: %s\n"

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v9, v8, v11

    .line 19
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-virtual {v4, v5, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/google/android/libraries/places/internal/dx;->b:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
