.class public final synthetic Llayout/-$$Lambda$ConnectionStatusLayout$4T1pgmdhRKJzMIZjiW_mZZmgcn4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Llayout/ConnectionStatusLayout;


# direct methods
.method public synthetic constructor <init>(Llayout/ConnectionStatusLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$ConnectionStatusLayout$4T1pgmdhRKJzMIZjiW_mZZmgcn4;->f$0:Llayout/ConnectionStatusLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$ConnectionStatusLayout$4T1pgmdhRKJzMIZjiW_mZZmgcn4;->f$0:Llayout/ConnectionStatusLayout;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Llayout/ConnectionStatusLayout;->lambda$subscribeToHasNotification$2(Llayout/ConnectionStatusLayout;Ljava/lang/Boolean;)V

    return-void
.end method
