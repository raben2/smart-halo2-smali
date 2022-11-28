.class public Lcom/instabug/library/logging/h;
.super Ljava/lang/Object;
.source "WriteLogDiskOperator.java"

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
.field private static final c:Ljava/lang/String; = "h"


# instance fields
.field private final a:Ljava/io/File;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/logging/h;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/logging/h;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/library/logging/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/instabug/library/logging/h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/logging/h;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/library/logging/h;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/logging/h;->a(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 27
    invoke-static {p2}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/instabug/library/logging/h;->a:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 30
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 32
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instabug/library/model/c;

    invoke-virtual {v5}, Lcom/instabug/library/model/c;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p2}, Lcom/instabug/library/util/memory/MemoryGuard;->from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instabug/library/util/memory/predicate/Predicate;

    new-instance v4, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;

    invoke-direct {v4}, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;-><init>()V

    aput-object v4, v1, v3

    new-instance v3, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;

    invoke-direct {v3, p1}, Lcom/instabug/library/util/memory/predicate/StringMemoryAvailablePredicate;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 37
    invoke-virtual {p2, v1}, Lcom/instabug/library/util/memory/MemoryGuard;->withPredicates([Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;

    move-result-object p2

    new-instance v1, Lcom/instabug/library/logging/h$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/instabug/library/logging/h$b;-><init>(Lcom/instabug/library/logging/h;Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2, v1}, Lcom/instabug/library/util/memory/ActionExecutor;->doAction(Lcom/instabug/library/util/memory/Action;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 55
    throw p1

    .line 57
    :cond_2
    sget-object p1, Lcom/instabug/library/logging/h;->c:Ljava/lang/String;

    const-string p2, "Running on low memory"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 60
    :cond_3
    sget-object p1, Lcom/instabug/library/logging/h;->c:Ljava/lang/String;

    const-string p2, "Null context. Skipping operation..."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/instabug/library/logging/h;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/logging/h;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
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
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/h;->b:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/instabug/library/logging/h;->a(Ljava/util/List;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/instabug/library/logging/h;->c:Ljava/lang/String;

    const-string v1, "execute: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/logging/h;->a:Ljava/io/File;

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

    .line 9
    invoke-static {}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->obtainOrchestrator()Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/logging/h$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/instabug/library/logging/h$a;-><init>(Lcom/instabug/library/logging/h;Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;->addWorkerThreadAction(Lcom/instabug/library/internal/orchestrator/Action;)Lcom/instabug/library/internal/orchestrator/ActionsOrchestrator;

    move-result-object p1

    .line 26
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

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/h;->a(Landroid/content/Context;)Landroid/net/Uri;

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

    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/logging/h;->a(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V

    return-void
.end method
