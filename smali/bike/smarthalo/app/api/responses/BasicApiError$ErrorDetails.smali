.class public Lbike/smarthalo/app/api/responses/BasicApiError$ErrorDetails;
.super Ljava/lang/Object;
.source "BasicApiError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/api/responses/BasicApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorDetails"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lbike/smarthalo/app/api/responses/BasicApiError;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/api/responses/BasicApiError;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lbike/smarthalo/app/api/responses/BasicApiError$ErrorDetails;->this$0:Lbike/smarthalo/app/api/responses/BasicApiError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
