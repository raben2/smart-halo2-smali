.class public final synthetic Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$fXYeNfTa-wn2fZiwHD1NA6FiMMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$fXYeNfTa-wn2fZiwHD1NA6FiMMg;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$fXYeNfTa-wn2fZiwHD1NA6FiMMg;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->lambda$getTaskObservable$2(Lbike/smarthalo/app/tasks/ImageLoadingTask;Ljava/lang/Throwable;)Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    move-result-object p1

    return-object p1
.end method
