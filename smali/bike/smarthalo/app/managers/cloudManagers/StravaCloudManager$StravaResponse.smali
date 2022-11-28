.class public Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;
.super Ljava/lang/Object;
.source "StravaCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StravaResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public isAccountDeactivated:Z

.field final synthetic this$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->this$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->this$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->value:Ljava/lang/Object;

    .line 377
    iput-boolean p3, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaResponse;->isAccountDeactivated:Z

    return-void
.end method
