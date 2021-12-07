#ifndef PICTUREIMAGEPROVIDER_H
#define PICTUREIMAGEPROVIDER_H

#include <QQuickImageProvider>

class PictureModel;

class PictureImageProvider : public QQuickImageProvider
{
public:

    PictureImageProvider(PictureModel* pictureModel);

    QPixmap requestPixmap(const QString& id, QSize* size,
                          const QSize& requestedSize) override;

private:
    PictureModel* mPictureModel;
};

#endif // PICTUREIMAGEPROVIDER_H
