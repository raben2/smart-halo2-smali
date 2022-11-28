.class public interface abstract Lcom/instabug/bug/view/reporting/d;
.super Ljava/lang/Object;
.source "IBaseReportingView.java"

# interfaces
.implements Lcom/instabug/library/core/ui/BaseContract$Presenter;


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/instabug/library/model/Attachment;)V
    .param p1    # Lcom/instabug/library/model/Attachment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method
