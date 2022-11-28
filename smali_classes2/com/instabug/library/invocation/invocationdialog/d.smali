.class public interface abstract Lcom/instabug/library/invocation/invocationdialog/d;
.super Ljava/lang/Object;
.source "InstabugDialogActivityContract.java"

# interfaces
.implements Lcom/instabug/library/core/ui/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/core/ui/BaseContract$View<",
        "Landroidx/appcompat/app/AppCompatActivity;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getFadeInAnimation()I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end method

.method public abstract getSlidInLeftAnimation()I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end method

.method public abstract getSlidInRightAnimation()I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end method

.method public abstract getSlidOutLeftAnimation()I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end method

.method public abstract getSlidOutRightAnimation()I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end method

.method public abstract onInitialScreenShotNotRequired()V
.end method

.method public abstract setContent(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/invocation/invocationdialog/InstabugDialogItem;",
            ">;)V"
        }
    .end annotation
.end method
