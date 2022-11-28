.class Lbike/smarthalo/app/controllers/AlarmController$1$2;
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

    .line 144
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    const/4 v0, 0x0

    .line 148
    aget-byte p1, p1, v0

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object p1, p1, Lbike/smarthalo/app/controllers/AlarmController$1;->val$isArmed:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const-string p1, "isAlarmSet"

    .line 150
    invoke-static {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    .line 152
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object p1, p1, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object p1, p1, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Failure:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/models/AlarmUpdateCallback;->onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object p1, p1, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1$2;->this$1:Lbike/smarthalo/app/controllers/AlarmController$1;

    iget-object p1, p1, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/models/AlarmUpdateCallback;->onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V

    :cond_2
    :goto_0
    return-void
.end method
