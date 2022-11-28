.class Llayout/ConnectionStatusLayout$2;
.super Ljava/lang/Object;
.source "ConnectionStatusLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/ConnectionStatusLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/ConnectionStatusLayout;


# direct methods
.method constructor <init>(Llayout/ConnectionStatusLayout;)V
    .locals 0

    .line 192
    iput-object p1, p0, Llayout/ConnectionStatusLayout$2;->this$0:Llayout/ConnectionStatusLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 195
    iget-object p1, p0, Llayout/ConnectionStatusLayout$2;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$600(Llayout/ConnectionStatusLayout;)Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Llayout/ConnectionStatusLayout$2;->this$0:Llayout/ConnectionStatusLayout;

    invoke-static {p1}, Llayout/ConnectionStatusLayout;->access$600(Llayout/ConnectionStatusLayout;)Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;

    move-result-object p1

    invoke-interface {p1}, Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;->onClickConnectionStatusView()V

    :cond_0
    return-void
.end method
