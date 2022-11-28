.class public final synthetic Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$zCX44stLmIPkFK8JQY7ejsg3cpo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$zCX44stLmIPkFK8JQY7ejsg3cpo;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$zCX44stLmIPkFK8JQY7ejsg3cpo;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->lambda$getTaskObservable$1(Lbike/smarthalo/app/tasks/ImageLoadingTask;Ljava/lang/Throwable;)V

    return-void
.end method
