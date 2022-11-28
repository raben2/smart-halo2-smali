.class public Lcom/instabug/library/internal/orchestrator/c;
.super Ljava/lang/Object;
.source "InsertUserAttributeAction.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# instance fields
.field private final a:Lcom/instabug/library/model/h;


# direct methods
.method public constructor <init>(Lcom/instabug/library/model/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/c;->a:Lcom/instabug/library/model/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/orchestrator/c;->a:Lcom/instabug/library/model/h;

    invoke-static {v0}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->insert(Lcom/instabug/library/model/h;)J

    return-void
.end method
