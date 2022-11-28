.class public interface abstract Lcom/instabug/bug/view/reporting/e;
.super Ljava/lang/Object;
.source "IBaseReportingView.java"

# interfaces
.implements Lcom/instabug/library/core/ui/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/core/ui/BaseContract$View<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/text/Spanned;)V
.end method

.method public abstract a(Lcom/instabug/library/model/Attachment;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/text/Spanned;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract m()V
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract requestMediaProjectionPermission()V
.end method

.method public abstract showMediaFileSizeAlert()V
.end method

.method public abstract showPreparingDialog()V
.end method

.method public abstract showVideoLengthAlert()V
.end method

.method public abstract t()V
.end method

.method public abstract v()V
.end method
