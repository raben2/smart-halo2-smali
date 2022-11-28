.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$DHxOfYNNYVcWJC6gc3GG-bCbE-k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$DHxOfYNNYVcWJC6gc3GG-bCbE-k;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$ObservableTimerHelper$DHxOfYNNYVcWJC6gc3GG-bCbE-k;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lbike/smarthalo/sdk/ObservableTimerHelper;->lambda$getObservableTimer$1(Ljava/lang/Runnable;)V

    return-void
.end method
