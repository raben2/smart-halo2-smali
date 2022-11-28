.class public final synthetic Llayout/-$$Lambda$ADcx_u3R-GH4YH_Nj1L_AKLpbWo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llayout/customControls/BaseAlertDialog$ClickContract;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$ADcx_u3R-GH4YH_Nj1L_AKLpbWo;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$ADcx_u3R-GH4YH_Nj1L_AKLpbWo;->f$0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
