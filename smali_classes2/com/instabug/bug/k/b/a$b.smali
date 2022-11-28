.class final Lcom/instabug/bug/k/b/a$b;
.super Ljava/lang/Object;
.source "ActivityViewInspector.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/k/b/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/k/b/a$h;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/instabug/bug/k/b/a$h;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/k/b/a$b;->a:Lcom/instabug/bug/k/b/a$h;

    iput-object p2, p0, Lcom/instabug/bug/k/b/a$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "un-subscribe called, time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityViewInspector"

    .line 3
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/k/b/a$b;->a:Lcom/instabug/bug/k/b/a$h;

    invoke-virtual {v0}, Lcom/instabug/bug/k/b/a$h;->a()V

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/k/b/a$b;->a:Lcom/instabug/bug/k/b/a$h;

    invoke-virtual {v0}, Lcom/instabug/bug/k/b/a$h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/k/b/a$b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyDiskUtils;->getViewHierarchyImagesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->cleanDirectory(Ljava/io/File;)V

    :cond_0
    return-void
.end method
