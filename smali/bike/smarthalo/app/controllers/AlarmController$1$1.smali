.class Lbike/smarthalo/app/controllers/AlarmController$1$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "AlarmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/AlarmController$1;->onDone([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbike/smarthalo/app/controllers/AlarmController$1;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/AlarmController$1;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$1;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1$1;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object v0, v0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1$1;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object v0, v0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    if-eqz p1, :cond_0

    sget-object p1, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Unsupported:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    :goto_0
    invoke-interface {v0, p1}, Lbike/smarthalo/app/models/AlarmUpdateCallback;->onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V

    :cond_1
    return-void
.end method
