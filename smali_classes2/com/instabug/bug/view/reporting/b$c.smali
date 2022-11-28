.class Lcom/instabug/bug/view/reporting/b$c;
.super Ljava/lang/Object;
.source "BaseReportingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/b;->a(Landroid/view/View;Lcom/instabug/library/model/Attachment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/instabug/library/model/Attachment;

.field final synthetic d:Lcom/instabug/bug/view/reporting/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/b;ILandroid/view/View;Lcom/instabug/library/model/Attachment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    iput p2, p0, Lcom/instabug/bug/view/reporting/b$c;->a:I

    iput-object p3, p0, Lcom/instabug/bug/view/reporting/b$c;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/instabug/bug/view/reporting/b$c;->c:Lcom/instabug/library/model/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/instabug/bug/view/reporting/b$c;->a:I

    sget v1, Lcom/instabug/bug/R$id;->instabug_attachment_img_item:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->r(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b$c;->c:Lcom/instabug/library/model/Attachment;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->t(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v3

    check-cast v3, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v3}, Lcom/instabug/bug/view/reporting/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/bug/view/reporting/b;->a(Lcom/instabug/bug/view/reporting/b;Landroid/view/View;Lcom/instabug/library/model/Attachment;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/instabug/bug/R$id;->instabug_btn_remove_attachment:I

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->u(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->v(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$c;->c:Lcom/instabug/library/model/Attachment;

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/reporting/d;->a(Lcom/instabug/library/model/Attachment;)V

    goto :goto_0

    .line 7
    :cond_1
    sget v1, Lcom/instabug/bug/R$id;->instabug_attachment_video_item:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->c:Lcom/instabug/library/model/Attachment;

    invoke-virtual {v0}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/b;->c(Lcom/instabug/bug/view/reporting/b;Z)Z

    .line 9
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$c;->c:Lcom/instabug/library/model/Attachment;

    invoke-virtual {v1}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/bug/view/reporting/b;->a(Ljava/lang/String;)V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->w(Lcom/instabug/bug/view/reporting/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->x(Lcom/instabug/bug/view/reporting/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/b;->w(Lcom/instabug/bug/view/reporting/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    invoke-static {v1}, Lcom/instabug/bug/view/reporting/b;->x(Lcom/instabug/bug/view/reporting/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b$c;->d:Lcom/instabug/bug/view/reporting/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/bug/view/reporting/b;->a(Lcom/instabug/bug/view/reporting/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
