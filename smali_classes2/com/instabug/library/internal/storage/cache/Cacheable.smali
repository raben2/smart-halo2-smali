.class public interface abstract Lcom/instabug/library/internal/storage/cache/Cacheable;
.super Ljava/lang/Object;
.source "Cacheable.java"


# virtual methods
.method public abstract fromJson(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract toJson()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
