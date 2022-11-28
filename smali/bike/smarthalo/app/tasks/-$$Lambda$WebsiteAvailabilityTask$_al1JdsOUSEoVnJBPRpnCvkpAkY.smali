.class public final synthetic Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$_al1JdsOUSEoVnJBPRpnCvkpAkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$_al1JdsOUSEoVnJBPRpnCvkpAkY;->f$0:Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/tasks/-$$Lambda$WebsiteAvailabilityTask$_al1JdsOUSEoVnJBPRpnCvkpAkY;->f$0:Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;

    invoke-static {v0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->lambda$getTaskObservable$0(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
