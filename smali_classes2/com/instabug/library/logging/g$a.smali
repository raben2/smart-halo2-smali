.class Lcom/instabug/library/logging/g$a;
.super Ljava/lang/Object;
.source "WriteLogDescriptorDiskOperator.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/g;->a(Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

.field final synthetic c:Lcom/instabug/library/logging/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/g;Landroid/content/Context;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/g$a;->c:Lcom/instabug/library/logging/g;

    iput-object p2, p0, Lcom/instabug/library/logging/g$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/instabug/library/logging/g$a;->b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/g$a;->c:Lcom/instabug/library/logging/g;

    invoke-static {v0}, Lcom/instabug/library/logging/g;->a(Lcom/instabug/library/logging/g;)Lcom/instabug/library/model/d;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/logging/g$a;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/instabug/library/logging/g;->a(Lcom/instabug/library/logging/g;Lcom/instabug/library/model/d;Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/logging/g$a;->b:Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/logging/g$a;->c:Lcom/instabug/library/logging/g;

    invoke-static {v1}, Lcom/instabug/library/logging/g;->b(Lcom/instabug/library/logging/g;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
