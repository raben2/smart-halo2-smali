.class Lbike/smarthalo/app/navigation/SHDirectionService$2;
.super Ljava/util/TimerTask;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/SHDirectionService;->processTurnByTurnOffThePath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/navigation/SHDirectionService;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService$2;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 667
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService$2;->this$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-static {v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->access$1500(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    return-void
.end method
