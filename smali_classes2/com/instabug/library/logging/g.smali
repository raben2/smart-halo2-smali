.class public Lcom/instabug/library/logging/g;
.super Ljava/lang/Object;
.source "WriteLogDescriptorDiskOperator.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/operation/DiskOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/internal/storage/operation/DiskOperation<",
        "Landroid/net/Uri;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "g"


# instance fields
.field private final a:Ljava/io/File;

.field private b:Lcom/instabug/library/model/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/instabug/library/model/d;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/instabug/library/model/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/logging/g;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/logging/g;->b:Lcom/instabug/library/model/d;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/logging/g;)Lcom/instabug/library/model/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/logging/g;->b:Lcom/instabug/library/model/d;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/library/logging/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/logging/g;Lcom/instabug/library/model/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/logging/g;->a(Lcom/instabug/library/model/d;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/instabug/library/model/d;Landroid/content/Context;)V
    .locals 5
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 17
    invoke-static {p2}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/instabug/library/logging/g;->a:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/library/model/d;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p2}, Lcom/instabug/library/util/memory/MemoryGuard;->from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instabug/library/util/memory/predicate/Predicate;

    const/4 v3, 0x0

    new-instance v4, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;

    invoke-direct {v4}, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;-><init>()V

    aput-object v4, v1, v3

    new-instance v3, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;

    invoke-direct {v3, p1}, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 22
    invoke-virtual {p2, v1}, Lcom/instabug/library/util/memory/MemoryGuard;->withPredicates([Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;

    move-result-object p2

    new-instance v1, Lcom/instabug/library/logging/g$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/instabug/library/logging/g$b;-><init>(Lcom/instabug/library/logging/g;Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2, v1}, Lcom/instabug/library/util/memory/ActionExecutor;->doAction(Lcom/instabug/library/util/memory/Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 40
    throw p1

    .line 42
    :cond_0
    sget-object p1, Lcom/instabug/library/logging/g;->c:Ljava/lang/String;

    const-string p2, "Running on low memory"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    sget-object p1, Lcom/instabug/library/logging/g;->c:Ljava/lang/String;

    const-string p2, "Null context. Skipping operation..."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/logging/g;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/logging/g;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/instabug/library/logging/g;->b:Lcom/instabug/library/model/d;

    invoke-direct {p0, v0, p1}, Lcom/instabug/library/logging/g;->a(Lcom/instabug/library/model/d;Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/library/logging/g;->a:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 2
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/g$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/instabug/library/logging/g$a;-><init>(Lcom/instabug/library/logging/g;Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->orchestrate()V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/g;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/logging/g;->a(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method
