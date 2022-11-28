.class Lcom/instabug/bug/view/a$a;
.super Ljava/lang/Object;
.source "AttachmentsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/a;->a(Lcom/instabug/bug/view/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/a;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/view/a$a;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a$a;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
