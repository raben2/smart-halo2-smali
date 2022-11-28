.class Lcom/instabug/chat/ui/f/g$f$a;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g$f;->onSuccess(Lcom/instabug/library/model/AssetEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/AssetEntity;

.field final synthetic b:Lcom/instabug/chat/ui/f/g$f;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g$f;Lcom/instabug/library/model/AssetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$f$a;->b:Lcom/instabug/chat/ui/f/g$f;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$f$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$f$a;->b:Lcom/instabug/chat/ui/f/g$f;

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$f;->b:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$f$a;->a:Lcom/instabug/library/model/AssetEntity;

    invoke-virtual {v0}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/chat/ui/f/g$i;->b(Ljava/lang/String;)V

    return-void
.end method
