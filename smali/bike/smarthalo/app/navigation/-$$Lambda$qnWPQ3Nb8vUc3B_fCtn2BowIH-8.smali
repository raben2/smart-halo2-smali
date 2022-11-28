.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$qnWPQ3Nb8vUc3B_fCtn2BowIH-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/navigation/SHDirectionService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$qnWPQ3Nb8vUc3B_fCtn2BowIH-8;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$qnWPQ3Nb8vUc3B_fCtn2BowIH-8;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
