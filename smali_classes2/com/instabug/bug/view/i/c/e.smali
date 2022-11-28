.class interface abstract Lcom/instabug/bug/view/i/c/e;
.super Ljava/lang/Object;
.source "VisualUserStepsListContract.java"

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

.method public abstract a(ILcom/instabug/bug/model/c;)V
.end method

.method public abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showPreparingDialog()V
.end method
