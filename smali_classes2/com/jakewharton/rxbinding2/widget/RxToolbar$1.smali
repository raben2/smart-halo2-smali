.class final Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;
.super Ljava/lang/Object;
.source "RxToolbar.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding2/widget/RxToolbar;->title(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;->val$view:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/CharSequence;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;->val$view:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
