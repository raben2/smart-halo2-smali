.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$q9XUIWcT51cRM3S3LJ4qHiNUHQU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DayLightController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$q9XUIWcT51cRM3S3LJ4qHiNUHQU;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$q9XUIWcT51cRM3S3LJ4qHiNUHQU;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DayLightController;->lambda$q9XUIWcT51cRM3S3LJ4qHiNUHQU(Lbike/smarthalo/app/controllers/DayLightController;Z)V

    return-void
.end method
